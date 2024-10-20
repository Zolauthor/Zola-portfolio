from mrjob.job import MRJob
from mrjob.step import MRStep
import re

class MRTopSellingDecade(MRJob):

    def mapper(self, _, line):
        # Splitting the line into fields
        fields = line.strip().split('\t')

        # Extracting artist and sales from the fields
        artist_year = fields[0].strip()[1:-1].split(', ')
        artist = artist_year[0][1:-1]  
        year = int(artist_year[1][1:-1]) 

        # Extracting the sales value using a regular expression
        sales_match = re.search(r'[\d.]+', fields[1])
        if sales_match:
            sales = float(sales_match.group())
            # Calculating the decade for the current year
            decade = (year // 10 * 10) + 9  
            yield (f"{decade-9}-{decade}", artist), sales

    def reducer_sum_sales(self, decade, values):
        # Summing up the sales for each artist within each decade
        total_sales = sum(values)
        yield decade[0], (total_sales, decade[1])

    def reducer_sort_sales(self, decade, sales_artist):
        # Sorting the artists by total sales in descending order within each decade
        sorted_sales = sorted(sales_artist, reverse=True)[:3]
        for sort in sorted_sales: 
            yield None, (decade, sort)
     
    def reducer_decade_sort(self, _, decade_sale_artist):
        #Sorting by decade
        sorted_decade = sorted(decade_sale_artist, reverse=True)
        for decade, sale_artist in sorted_decade:
            yield decade, sale_artist

    def steps(self):
        return [
            MRStep(mapper=self.mapper, reducer=self.reducer_sum_sales),
            MRStep(reducer=self.reducer_sort_sales),
            MRStep(reducer=self.reducer_decade_sort)
        ]

if __name__ == '__main__':
    MRTopSellingDecade.run()