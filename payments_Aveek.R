library(readr)
library(tidyverse)
library(ggplot2)

payments_data <- read_csv("./brazilian-ecommerce/olist_order_payments_dataset.csv")
# Columns - "order_id", "payment_sequential", "payment_type", "payment_installments", "payment_value" 
unique(payments_data$payment_value)
length(unique(payments_data$order_id))
## Order IDs - original:103886 vs unique:99440
payments_data %>% ggplot() + geom_bar(aes(x = order(payment_type)))

