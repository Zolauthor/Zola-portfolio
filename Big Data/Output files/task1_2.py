from mrjob.job import MRJob
from mrjob.step import MRStep

class MRTotalSales(MRJob):

    def mapper(self, _, line):
        # Splitting the line into fields
        fields = line.strip().split(',')
        
        # Extracting artist, year, and sales from the fields
        artist = fields[0][1:]  # Remove '<' and '>'
        year = fields[1].strip()
        
        try:
            sales = float(fields[2][:-1])  # Remove '>' and convert to float
        except ValueError:
            sales = 0.0  # Set sales to 0.0 if conversion fails
        
        # Emitting key-value pair
        yield (artist, year), sales

    def reducer(self, key, values):
        # Summing up the sales for each artist in each year
        total_sales = sum(values)
        
        # Emitting the result
        yield key, str(total_sales)

if __name__ == '__main__':
    MRTotalSales.run()
