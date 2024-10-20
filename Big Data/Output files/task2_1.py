from mrjob.job import MRJob
from mrjob.step import MRStep

class MRTopSellingArtist(MRJob):

    def mapper(self, _, line):
        # Splitting the line into fields
        fields = line.strip().split('\t')
        
        # Extracting artist, year, and sales from the fields
        artist_year = fields[0].strip()[1:-1].split(', ')
        artist = artist_year[0][1:-1]  # Removing quotes around artist
        year = artist_year[1][1:-1]  # Removing quotes around year
        sales = float(fields[1].strip()[1:-1])  # Removing quotes around sales and convert to float
        
        # Emitting key-value pair
        yield year, (artist, sales)

    def reducer_top_artist(self, year, values):
        # Finding the top-selling artist for the year
        top_artist, top_sales = max(values, key=lambda x: x[1])
        
        # Emitting the year and the top-selling artist
        yield None, (year, top_artist, top_sales)

    def reducer_sort_by_year(self, _, values):
        # Sorting the results by year in descending order
        for year, artist, sales in sorted(values, key=lambda x: x[0], reverse=True):
            yield year, [artist, sales]

    def steps(self):
        return [
            MRStep(mapper=self.mapper, reducer=self.reducer_top_artist),
            MRStep(reducer=self.reducer_sort_by_year)
        ]

if __name__ == '__main__':
    MRTopSellingArtist.run()
