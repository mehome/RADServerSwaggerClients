# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Model.EdgeModuleAddedObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"_id",
    :"modulename"
  ]

  @type t :: %__MODULE__{
    :"_id" => String.t,
    :"modulename" => String.t
  }
end

defimpl Poison.Decoder, for: EMSAPIDocumentation.Model.EdgeModuleAddedObject do
  def decode(value, _options) do
    value
  end
end

