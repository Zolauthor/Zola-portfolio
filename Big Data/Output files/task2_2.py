from mrjob.job import MRJob
from mrjob.step import MRStep
import re

class MRTopSellingArtists(MRJob):

    def mapper(self, _, line):
        # Splitting the line into fields
        fields = line.strip().split('\t')

        # Extracting artist and sales from the fields
        artist_year = fields[0].strip()[1:-1].split(', ')
        artist = artist_year[0][1:-1]  
        year = artist_year[1][1:-1]  
        
        # Extracting the sales value using a regular expression
        sales_match = re.search(r'[\d.]+', fields[1])
        if sales_match:
            sales = float(sales_match.group())
            yield artist, sales

    def reducer_sum_sales(self, artist, sales):
        # Summing up the sales for each artist across all time periods
        total_sales = sum(sales)

        # Emitting the artist and the total sales
        yield None, (artist, total_sales)

    def reducer_sort_by_sales(self, _, values):
        # Sorting the artists by total sales in descending order
        sorted_artists = sorted(values, key=lambda x: x[1], reverse=True)

        # Emitting the top 5 artists with their sales
        for artist, total_sales in sorted_artists[:5]:
            yield artist, total_sales

    def steps(self):
        return [
            MRStep(mapper=self.mapper, reducer=self.reducer_sum_sales),
            MRStep(reducer=self.reducer_sort_by_sales)
        ]

if __name__ == '__main__':
    MRTopSellingArtists.run()
