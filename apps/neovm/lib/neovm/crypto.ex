defmodule NeoVM.Crypto do
  @moduledoc """
    Convenience cryto functions for the neovm
  """

  def ripemd160(bin), do: :crypto.hash(:ripemd160, bin)
  def sha256(bin), do: :crypto.hash(:sha256, bin)
  def sha1(bin), do: :crypto.hash(:sha, bin)
  def hash160(bin) do
    bin
    |>sha256
    |> ripemd160
  end
  def hash256(bin) do
    bin
    |>sha256
    |> sha256
  end

  # def verify(msg,sig,hash,pub_key) do
  #   try do
  #     :public_key.verify(msg, hash, sig, pub_key)
  #   rescue
  #     _ -> nil
  #   end
  # end

  #Convert stackitems to binary
  def bin(true), do: 1
  def bin(false), do: 0
  def bin(x) when is_binary(x), do: x
  def bin(x) when is_number(x), do: :binary.encode_unsigned(x,:big)


end
