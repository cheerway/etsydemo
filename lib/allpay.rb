class Allpay
  attr_accessor :merchant_id, :hash_key, :hash_iv


  def initialize merchant_id: '2000132', hash_key: '5294y06JbISpM5x9', hash_iv: 'v77hoKGq4kWxNNIS'
    @merchant_id = merchant_id
    @hash_key = hash_key
    @hash_iv = hash_iv
  end
  
  def make_mac params = {}
   
    row = params.sort.map{|ary| "#{ary.first}=#{ary.last}"}.join('&')

    padding = "Hashkey=#{@hash_key}&#{row}&HashIV=#{@hash_iv}"

    url_encoded = CGI::escape(padding).downcase

    Digest::MD5.hexdigest(url_encoded).upcase
    # Hash#sort
    # Array#join
    # CGI#escape
    # Diges::MD5#hexdigest
    # String#downcase
    # String#upcase
  end 
end