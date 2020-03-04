/*
** EPITECH PROJECT, 2020
** strlen
** File description:
** strlen
*/

int my_strlen(char *str)
{
    int idx = 0;

    if (!str)
        return (-1);
    while (str[idx])
        idx++;
    return (idx);
}