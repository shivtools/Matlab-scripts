loan = 300000; %the loan amount
months = 20*12; %months in 20 years

 %function to feed in to fzero

mPay = 1684.57;

f = @(rate)loan*rate/(12*(1-(1/((1+(rate/12))^months)))) - mPay;

mPay = fzero(f, 1)
