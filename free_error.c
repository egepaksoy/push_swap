/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_error.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: epaksoy <epaksoy@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/22 02:32:04 by epaksoy           #+#    #+#             */
/*   Updated: 2024/01/22 02:32:14 by epaksoy          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"
#include <unistd.h>
#include <stdlib.h>

void	free_error(t_stack *stack, int num, int control)
{
	int	a;

	a = 0;
	free(stack->a);
	stack->a = NULL;
	free(stack->b);
	stack->b = NULL;
	if (control == 2)
	{
		while (stack->av[a])
		{
			if (stack->av[a])
				free(stack->av[a]);
			a++;
		}
		free(stack->av);
	}
	free(stack);
	stack = NULL;
	if (num)
		write(2, "Error\n", 6);
	exit(1);
}

void	ft_free_av(char **av, t_stack *stack, int control)
{
	int	a;

	a = 0;
	if (control == 2)
	{
		while (av[a])
		{
			free(av[a]);
			a++;
		}
		free(av);
	}
	ft_error(stack);
}

void	ft_error(t_stack *stack)
{
	free (stack->a);
	free (stack->b);
	free (stack);
	write(2, "Error\n", 6);
	exit (1);
}
