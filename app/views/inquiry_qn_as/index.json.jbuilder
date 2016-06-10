json.array!(@inquiry_qnas) do |inquiry_qna|
  json.extract! inquiry_qna, :id
  json.url inquiry_qna_url(inquiry_qna, format: :json)
end
