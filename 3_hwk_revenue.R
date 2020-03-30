#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# profit for each month
profit<-revenue-expenses
profit
profitThousands<-round(profit/1000)
profitThousands

# profit after tax for each month (the tax rate is 30%)
# assuming that taxes are taken off of profits ?? so tax = 0.30 x profit (like income tax?)
taxesOnProfits<-round(profit*0.3,2)
taxesOnProfits
profitAfterTax<-profit-taxesOnProfits
profitAfterTax
profitAfterTaxThousands<-round(profitAfterTax/1000)
profitAfterTaxThousands

# profit margin for each month - equals to profit a after tax divided by revenue 
profitMargin<-profitAfterTax/revenue
profitMargin
profitMarginInPercent <- round(profitMargin * 100)
profitMarginInPercent

# good months - where the profit after tax was greater than the mean for the year
meanProfit<-round(mean(profitAfterTax),2)
meanProfit
goodMonths<-profitAfterTax>meanProfit


# bad months - where the profit after tax was less than the mean for the year
badMonths<-profitAfterTax<meanProfit


# the best month - where the profit after tax was max for the year
bestMonth<-which.max(profitAfterTax)


# the worst month - where the profit after tax was min for the year
worstMonth<-which.min(profitAfterTax)


#solutions presented nicely
profitThousands
profitAfterTaxThousands
profitMarginInPercent
goodMonths
badMonths
bestMonth
worstMonth
