loan = 300,000; %the loan amount
months = 20*12; %months in 20 years

mPay = @(x)loan*x/(12*(1-(1/((1+(x/12))^months)))); %function to feed in to fzero

initial = 1684.57;

mPay = fzero(mPay, initial)
