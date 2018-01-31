#pragma once

// Struct used to pass around infos about the buffer used for display
// We assume that rowstride = 1 (memory is contiguous)
// We assume that n_channels = 3 (RGB)
struct Screen
{
	unsigned char * pixels = nullptr;
	unsigned int rowstride = 1;
	unsigned int n_channels = 3;
};
