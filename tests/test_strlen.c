/*
** EPITECH PROJECT, 2020
** test
** File description:
** test
*/

#include <criterion/criterion.h>

int my_strlen(char *str);

Test(test_strlen, test)
{
    cr_assert_eq(my_strlen("toto"), 4);
}