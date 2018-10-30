defmodule Example do
  @moduledoc false

  def channel do
    {:ok, channel} = GRPC.Stub.connect("35.180.51.163:50051")
    channel
  end

  def address do
    <<65, 209, 52, 51, 245, 63, 223, 136, 130, 12, 46, 83, 13, 167, 130, 140, 225, 93, 101, 133,
      203>>
  end

  def account(channel \\ channel(), <<address::21-bytes>> \\ address()) do
    Tron.Client.get_account(channel, Tron.Account.new(address: address))
  end
end
