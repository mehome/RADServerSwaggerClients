# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.PushDataObjectExtras do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.PushDataObjectExtras do
  def decode(value, _options) do
    value
  end
end

