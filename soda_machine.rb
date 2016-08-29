class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |s|
      return s if s.brand == soda_brand
      return nil if s.brand != soda_brand
    end
  end

  def sell(soda_brand)
    @sodas.each do |s|
      if s.brand == soda_brand
        @cash += s.price
        @sodas.delete(s)
      end
    end
      nil
  end

end
