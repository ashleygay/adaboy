
#pragma once

namespace std {
	using size_type = unsigned int;
	template <size_type internal_size = 0>
	class bitset
	{
		public:
			bitset();
			bitset(size_type value);
			const bool& operator[](size_type index) const;
			bool& operator[](size_type index);
			size_type size();
			bool any();
			void operator=(size_type value);
			unsigned long to_ulong();
		private:
			bool internal_array[internal_size];

	};
};

template <unsigned int size>
std::bitset<size> operator&(const std::bitset<size>& left,
			    const std::bitset<size>& right);

#include "bitset.cpp"
