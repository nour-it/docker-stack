model_name="nourit"

ollama pull gemma:2b
ollama create ${model_name} -f Modelfile
ollama run ${model_name}