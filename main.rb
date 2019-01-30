require 'aws-sdk-rekognition'

client_config = {
  access_key_id: '',
  secret_access_key: '',
  region: 'eu-west-1'
}

client = Aws::Rekognition::Client.new(client_config)
image = File.open("img.jpg", "rb")

resp = client.detect_faces({
  image: {
    bytes: image
  },
  attributes: ["ALL"]
})

resp.to_h
