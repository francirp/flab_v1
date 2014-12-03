class Product < ActiveRecord::Base

  validates :handle, :slug, uniqueness: true
  validates :title, :price, presence: true

  ADULT_BUNK_BED = {
    handle: 'adult-bunk-bed',
    slug: 'adult-bunk-bed',
    title: 'Adult Bunk Bed',
    price: 2295.00
  }

  ADULT_LOFT_BED = {
    handle: 'adult-loft-bed',
    slug: 'adult-loft-bed',
    title: 'Bunk Bed for Adults',
    price: 1895.00
  }

  STANDARD_BED = {
    handle: 'standard-bed',
    slug: 'standard-bed',
    title: 'Contemporary Aluminum Bed',
    price: 1450.00
  }

  def self.adult_bunk_bed
    Product.find_by_handle('adult-bunk-bed') || Product.create(ADULT_BUNK_BED)
  end

  def self.adult_loft_bed
    Product.find_by_handle('adult-loft-bed') || Product.create(ADULT_LOFT_BED)
  end

  def self.standard_bed
    Product.find_by_handle('standard-bed') || Product.create(STANDARD_BED)
  end

  def template
    handle.underscore
  end

end
