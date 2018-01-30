#pragma once

template <typename T>
class iterator {
	public:
		using self_type = iterator<T>;
		using value_type = T;
		using ref_type = T&;
		using pointer_type = T*;
		using diff_type = int;
		iterator(pointer_type ptr): internal_ptr(ptr) {}

		// Increments
		self_type operator++();
		self_type operator++(int junk);
		ref_type operator*() { return *internal_ptr; }
		pointer_type operator->() { return *internal_ptr; }

		bool operator==(const self_type& rhs)
			{ return internal_ptr == rhs.internal_ptr; } 

		bool operator!=(const self_type& rhs)
			{ return internal_ptr != rhs.internal_ptr; } 
	
	private:
		pointer_type internal_ptr;
};

template <typename T>
class const_iterator {
	public:
		using self_type = iterator<T>;
		using value_type = T;
		using ref_type = T&;
		using pointer_type = T*;
		using diff_type = int;
		iterator(pointer_type ptr): internal_ptr(ptr) {}

		// Increments
		self_type operator++();
		self_type operator++(int junk);

		const ref_type operator*() { return *internal_ptr; }
		const pointer_type operator->() { return *internal_ptr; }

		bool operator==(const self_type& rhs)
			{ return internal_ptr == rhs.internal_ptr; } 

		bool operator!=(const self_type& rhs)
			{ return internal_ptr != rhs.internal_ptr; } 
	
	private:
		pointer_type internal_ptr;
};
