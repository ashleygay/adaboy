#pragma once
#include "bitset.hpp"

namespace std {

	template <unsigned int internal_size>
	bitset<internal_size>::bitset()
	{
		*this = 0;
	}


	template <unsigned int internal_size>
	bitset<internal_size>::bitset(unsigned int value)
	{
		*this = value;
	}

	template <unsigned int internal_size>
	bool& bitset<internal_size>::operator[](unsigned int index)
	{
		return internal_array[index];
	}

/*	template <unsigned int internal_size>
	const bool& bitset<internal_size>::operator[](unsigned int index) const
	{
		return internal_array[index];
	}*/

	template <unsigned int internal_size>
	unsigned int bitset<internal_size>::size()
	{
		return internal_size;
	}

	template <unsigned int internal_size>
	bool bitset<internal_size>::any()
	{
		for (auto i  = 0; i < internal_size; ++i)
			if (internal_array[i])
				return true;
		return false;
	}


	template <unsigned int internal_size>
	void bitset<internal_size>::operator=(unsigned int value)
	{
		for (unsigned int i  = 0; i < internal_size; ++i) {
			internal_array[i] = (value & (1 << i));
		}
	}

	template <unsigned int internal_size>
	unsigned long bitset<internal_size>::to_ulong()
	{
		unsigned long result = 0;
		for (unsigned int i  = 0; i < internal_size; ++i) {
			result += internal_array[i] << i;
		}
		return result;
	}
};

template <unsigned int size>
std::bitset<size> operator&(const std::bitset<size>& left,
			    const std::bitset<size>& right)
{
	std::bitset<size> b;
	for (unsigned int i = 0; i < size; ++i) {
		b[i] = left[i] & right[i];
	}
	return b;
}


