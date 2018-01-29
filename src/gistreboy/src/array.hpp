#pragma once

namespace std {

	using size_type = unsigned int;

	template <typename T, size_type internal_size = 0>
	class array
	{
		public:
			T& operator[](size_type index);
			const T& operator[](size_type index) const;
			size_type size() const;
		private:
			T underlying_array[internal_size];
			size_type current_size = 0;
	};
};

#include "array.cpp"
