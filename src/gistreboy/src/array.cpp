#pragma once
#include "array.hpp"

namespace std {

	template <typename T, unsigned int internal_size>
	T& array<T, internal_size>::operator[](unsigned int index)
	{
		// We update the internal_size of the array
		if (index > current_size)
			current_size = index;

		return underlying_array[index];
	}

	template <typename T, unsigned int internal_size>
	const T& array<T, internal_size>::operator[](unsigned int index) const
	{
		return underlying_array[index];
	}

	template <typename T, unsigned int internal_size>
	unsigned int array<T, internal_size>::size() const
	{
		return current_size;
	}
};
