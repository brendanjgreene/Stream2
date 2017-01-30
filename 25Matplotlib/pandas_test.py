import datetime
import pandas
from pandas_datareader import data
import matplotlib.pyplot as plt
from matplotlib import style

style.use('fivethirtyeight')

start = datetime.datetime(2010, 1, 1)
end = datetime.datetime(2015, 8, 22)

df = data.DataReader("XOM", "yahoo", start, end)

print df.head()

df['High'].plot()
plt.legend()
plt.show()

web_stats = {'Day':[1,2,3,4,5,6],
             'Visitors':[43,34,65,56,29,76],
             'Bounce Rate':[65,67,78,65,45,52]}

df = pandas.DataFrame(web_stats)
print "DF HEAD"
print df.head()
print "------------------"
print "DF TAIL"
print df.tail()
print "------------------"
print "DF TAIL LIMITED TO 2"
print df.tail(2)
print "MAKE THE DAY THE INDEX"

df.set_index('Day', inplace=True)

print df.Visitors

df['Visitors'].plot()
plt.show()

df.plot()
plt.show()

print df[['Visitors','Bounce Rate']]