In the `:tron` app there is an auto-generated (protobuf) module [`Protocol.Account`](https://github.com/syfgkjasdkn/tron-protocol/blob/513da37d64612750c0db4606ee7a41b79a206c70/lib/tron/proto/core/Tron.pb.ex#L143) which for some reason is unavailable during compilation:

```elixir
warning: function Procotol.Account.new/1 is undefined (module Procotol.Account is not available)
  lib/example.ex:15
```

but available at runtime:

```elixir
iex(1)> Protocol.Account.new()
%Protocol.Account{
  account_id: "",
  account_name: "",
  account_resource: nil,
  address: "",
  allowance: 0,
  asset: %{},
  asset_issued_name: "",
  balance: 0,
  code: "",
  codeHash: "",
  create_time: 0,
  free_asset_net_usage: %{},
  free_net_usage: 0,
  frozen: [],
  frozen_supply: [],
  is_committee: false,
  is_witness: false,
  latest_asset_operation_time: %{},
  latest_consume_free_time: 0,
  latest_consume_time: 0,
  latest_opration_time: 0,
  latest_withdraw_time: 0,
  net_usage: 0,
  type: 0,
  votes: []
}
```
