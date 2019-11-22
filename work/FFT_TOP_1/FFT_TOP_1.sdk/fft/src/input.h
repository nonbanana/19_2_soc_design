/*
 * input.h
 *
 *  Created on: 2017. 11. 10.
 *      Author: user
 */

#ifndef INPUT_H_
#define INPUT_H_

#define MAX_LENGTH 0x400

int inReal[MAX_LENGTH] = {
		0b1000000100000000,
		0b1100111100100000,
		0b0001100011000000,
		0b1111100101110000,
		0b1111111110110000,
		0b0000101001010000,
		0b0000000101010000,
		0b0000010110010000,
		0b1111111001100000,
		0b1111110011110000,
		0b0000011101100000,
		0b1111100001010000,
		0b0000000110100000,
		0b0000010011100000,
		0b0000000101100000,
		0b0000100000100000,
		0b1111100010010000,
		0b1111001100000000,
		0b1111110001110000,
		0b1111100101010000,
		0b1111101011000000,
		0b1111011001000000,
		0b1111100010010000,
		0b0000111000000000,
		0b1111110001000000,
		0b1111101000110000,
		0b0001001000110000,
		0b0000100101010000,
		0b1111111100110000,
		0b0000100011110000,
		0b0000100000010000,
		0b1111101010000000,
		0b1111100101010000,
		0b0000001101100000,
		0b0000101111100000,
		0b0000000001000000,
		0b0000000000010000,
		0b1111111110110000,
		0b0000001100110000,
		0b0000000110000000,
		0b1111101010100000,
		0b1111101101110000,
		0b1111011100100000,
		0b1111001101010000,
		0b0000000011000000,
		0b0000000010010000,
		0b0000010111110000,
		0b0000011011010000,
		0b1111011010000000,
		0b1111010100100000,
		0b1111011000110000,
		0b1111011011010000,
		0b0000101010010000,
		0b1111110000110000,
		0b1111000101010000,
		0b1111111100000000,
		0b1111010011110000,
		0b1111001110110000,
		0b0000001001100000,
		0b0000011011100000,
		0b1111010010110000,
		0b1111101000010000,
		0b0001010000100000,
		0b1101100000010000,
		0b0010011110110000,
		0b0011101100000000,
		0b0001001111100000,
		0b1111100010110000,
		0b0000010010000000,
		0b1111111110010000,
		0b0000011010000000,
		0b0000000011110000,
		0b0000100001110000,
		0b0000110101100000,
		0b0000011101110000,
		0b1111010111100000,
		0b1111111010010000,
		0b0000111101000000,
		0b0000001011010000,
		0b1111010101010000,
		0b1111010010000000,
		0b1111011111010000,
		0b1111100010100000,
		0b1111110111100000,
		0b1111111100000000,
		0b1111100000000000,
		0b0000101000010000,
		0b1111110111000000,
		0b1111001110000000,
		0b1111110010000000,
		0b1111101000010000,
		0b1111101110000000,
		0b1110110010000000,
		0b1110100000110000,
		0b1111111111110000,
		0b0000011100110000,
		0b0000001110100000,
		0b0001001110100000,
		0b0000100101000000,
		0b0000000101000000,
		0b1111111110010000,
		0b1111011110010000,
		0b0000001000010000,
		0b0001001001110000,
		0b1111111100010000,
		0b1110100111000000,
		0b0000000000110000,
		0b1111110110100000,
		0b1111001011000000,
		0b1110110001010000,
		0b1111011111010000,
		0b1111110101010000,
		0b0000011110100000,
		0b0000011000110000,
		0b0000001100110000,
		0b0000101101100000,
		0b1111100111110000,
		0b1111110101000000,
		0b1111011001110000,
		0b1111110011010000,
		0b0000011000100000,
		0b1111001010100000,
		0b0000000000100000,
		0b0000101011000000,
		0b1110100111100000,
		0b0000000011000000,
		0b0000110011110000,
		0b1111111010110000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
};

int inImag[MAX_LENGTH] = {
		0b1100111110010000,
		0b1111010101000000,
		0b1111010001100000,
		0b1111000011010000,
		0b1111111100110000,
		0b1111100011110000,
		0b1111011000000000,
		0b1111101111000000,
		0b0000010001000000,
		0b0000001000000000,
		0b1111101111100000,
		0b1111101101110000,
		0b1111100000000000,
		0b1111010010110000,
		0b0001000101110000,
		0b0001001000110000,
		0b0000010010000000,
		0b0000011101100000,
		0b0000000000010000,
		0b0000000101100000,
		0b0000010010100000,
		0b0000001011000000,
		0b0000100111110000,
		0b0000001110110000,
		0b1111110110010000,
		0b1111111111000000,
		0b1111110100000000,
		0b0000100110100000,
		0b0000101011100000,
		0b1111110101110000,
		0b0000110010010000,
		0b0000001110000000,
		0b1111010111100000,
		0b1111101010010000,
		0b1111110010110000,
		0b1111111111110000,
		0b1111110110100000,
		0b1111101000000000,
		0b0000100001010000,
		0b1111111110100000,
		0b1111111011000000,
		0b0001100000100000,
		0b0001010001000000,
		0b0000011100000000,
		0b1111011010010000,
		0b1110111011100000,
		0b1111101111000000,
		0b1111011001010000,
		0b1111011000100000,
		0b1111110110100000,
		0b1111001011100000,
		0b0000001101110000,
		0b0000100011010000,
		0b1111011110010000,
		0b0000010000100000,
		0b0000101110100000,
		0b0000011010000000,
		0b0000010101110000,
		0b0000000010100000,
		0b0000010010000000,
		0b1111100101000000,
		0b1111011110010000,
		0b0000111110010000,
		0b1110101011000000,
		0b0111111100000000,
		0b0000101101100000,
		0b1101001101110000,
		0b0000101010110000,
		0b1111110111010000,
		0b1111001010100000,
		0b0000100101000000,
		0b1111111010010000,
		0b1111110000000000,
		0b1111110001010000,
		0b1111101100000000,
		0b0000111001110000,
		0b0000010111000000,
		0b1111110000010000,
		0b1110111000110000,
		0b1111011000110000,
		0b0000100011000000,
		0b0000111000110000,
		0b0000000111000000,
		0b0000011011110000,
		0b1111110001010000,
		0b0000011101110000,
		0b0000011100010000,
		0b1111101001000000,
		0b1111110100110000,
		0b1111101110110000,
		0b1111001011100000,
		0b1111101011000000,
		0b0000010000000000,
		0b0000111100000000,
		0b0000010010110000,
		0b0000100001000000,
		0b0000010110110000,
		0b0000010101010000,
		0b1111001101100000,
		0b1111111001100000,
		0b0000010011110000,
		0b1111000001100000,
		0b1111111111100000,
		0b0000100010100000,
		0b1111010100110000,
		0b1111110010000000,
		0b0000100101110000,
		0b0000010100100000,
		0b1111110100000000,
		0b1111101011010000,
		0b1111101011110000,
		0b0001001101110000,
		0b0000101001100000,
		0b1111111000100000,
		0b0000000001100000,
		0b1111011100100000,
		0b0000010010100000,
		0b0000101111110000,
		0b1111101011000000,
		0b1111011001110000,
		0b0000011011000000,
		0b0000100110100000,
		0b1111101111100000,
		0b1110001101100000,
		0b0000010101100000,
		0b0001011110110000,
		0b1101100001000000,
		0b0010011010010000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,
		0b0000000000000000,

};



#endif /* INPUT_H_ */
