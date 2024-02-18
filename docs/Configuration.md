# OpenapiClient::Configuration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sales** | [**Sales**](Sales.md) |  | [optional] |
| **payments** | [**Payments**](Payments.md) |  | [optional] |
| **new_payments** | [**NewPayments**](NewPayments.md) |  | [optional] |
| **fees** | [**Fees**](Fees.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Configuration.new(
  sales: null,
  payments: null,
  new_payments: null,
  fees: null
)
```

