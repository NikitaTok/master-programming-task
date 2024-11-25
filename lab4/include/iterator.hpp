#ifndef __ITERATOR_HPP__
#define __ITERATOR_HPP__
#include <cmath>
#include <iterator>
#include <type_traits>
#include <utility>
#include </boost/iterator/iterator_adaptor.hpp>
#include <type_traits>
#include <vector>
#include <algorithm>

//{ image iterator
template<class Iterator>

class image_iterator: public boost::iterator_adaptor<image_iterator<Iterator>, Iterator> {
    using AdaptorType = boost::iterator_adaptor<image_iterator<Iterator>, Iterator>;
    
    public:
    image_iterator(Iterator input_iterator, size_t width_id, size_t stride_t) :
    
    AdaptorType(input_iterator), stride(stride_t), width(width_id) {}
    
    private:
    friend class boost::iterator_core_access;
    
    typename AdaptorType::reference dereference() const {
        return *(this->base_reference());
        }
        
    void increment() {
        advance(1);
        }
        
    void decrement() {
        advance(-1);
    }
    
    void advance(typename AdaptorType::difference_type d_t_p) {
        ptrdiff_t count_rows = std::floor((crnt_pos + d_t_p) / double(width));
        crnt_pos += d_t_p;
        crnt_pos %= width;
        this->base_reference() = this->base_reference() + d_t_p + count_rows * ptrdiff_t(stride - width);
        }
    
    typename AdaptorType::difference_type distance_to(image_iterator const& i_i) const {
        ptrdiff_t raw_distance = i_i.base() - this->base() - i_i.crnt_pos + this->crnt_pos;
        ptrdiff_t count_rows = raw_distance / ptrdiff_t(stride);
        return i_i.base() - this->base() - count_rows * (stride - width);
        };
        
    bool equal(AdaptorType const& i_i) const{
        return this->base() == i_i.base();
        }
        
    size_t stride;
    size_t width;
    ptrdiff_t crnt_pos = 0;
};

//}

#endif // __ITERATOR_HPP__