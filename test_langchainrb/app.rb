require "langchainrb"
require "dotenv/load"
require "openai"

client = Langchain::LLM::OpenAI.new(api_key: ENV["OPENAI_API_KEY"])

# Enviar un prompt
respuesta = client.chat(messages: [
  { role: "system", content: "Eres un experto en arquitectura de software." },
  { role: "user", content: "Explícame el patron de diseño singleton." }
])

puts "Respuesta del modelo:"
puts respuesta.completion