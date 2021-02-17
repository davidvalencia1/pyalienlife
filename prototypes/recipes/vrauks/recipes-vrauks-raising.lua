local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'vrauks',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name = 'cocoon', amount = 4},
                    {name='biomass',amount =15},
                    {name='moss',amount =5},
				},
			results =
				{
					{name='vrauks', amount = 4},
				},
			crafting_speed = 160,
			--tech = 'vrauks'
		},
		--red
		{
			ingredients =
				{
					{name='biomass',amount ='R'},
					{name = 'cocoon', amount = '+3'},
					{name='moss',amount = '+5'},
					{name='vrauksfood01',amount =3},
					{name='waterbarrel',amount=3,return_item={name='empty-barrel',amount=3}},
					{name='saps',amount = 10},
					{name='fawogae',amount = 5},
				},
			results =
				{
					{name='vrauks',amount = '+3'},
				},
			crafting_speed = 120,
			tech = 'vrauks'
		},
		--green
		{
			ingredients =
				{
					{name = 'cocoon', amount = '+8'},
					{name='bedding',amount = 1},
					{name='vrauksfood02',amount =4},
					{name='saps',amount = '+10'},
					{name='fawogae',amount = '+5'},

				},
			results =
				{
					{name='vrauks',amount ='+8'},
				},
			crafting_speed = 80,
			tech = 'vrauks-mk02'
		},

		--py
		{
			ingredients =
				{
					{name='cocoon',amount = '+10'},
					{name='bedding',amount = '+5'},
					{name='honeycomb', amount = 4},
					{name='syrupbarrel',amount=2,return_item={name='empty-barrel',amount=2}},
				},
			results =
				{
					{name='vrauks',amount ='+10'},
				},
			crafting_speed = 50,
			tech = 'vrauks-mk03'
		},
		--production
		{
			ingredients =
				{
					{name='cocoon',amount = '+10'},
					{name='bedding',amount = '+5'},
					{name='vrauksfood01',amount ='+7'},
					{name='vrauksfood02',amount ='+6'},
				},
			results =
				{
					{name='vrauks',amount ='+10'},
				},
			crafting_speed = 20,
			tech = 'vrauks-mk04'
		}
	}
}

------------------CUB MAKER------------------

fun.autorecipes {
    name = 'vrauks-coccon',
	category = 'vrauks',
	module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'c',
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='vrauks',amount =2},
                    {name='moss',amount =10},
					{name='waterbarrel',amount=4,return_item={name='empty-barrel',amount=4}},
					{name='saps',amount = 3},
				},
			results =
				{
					{name='cocoon', amount_min =5,amount_max =7},
				},
			crafting_speed = 140,
			--tech = 'vrauks'
		},
		--red
		{
			ingredients =
				{
					{name='vrauks',amount ='+2'},
                    {name='biomass',amount = 10},
					{name='vrauksfood01',amount =2},
				},
			results =
				{
					{name='cocoon', amount_min =8,amount_max =12},
				},
			crafting_speed = 110,
			tech = 'vrauks'
		},
		--green
		{
			ingredients =
				{
					{name='vrauks',amount ='+2'},
					{name='bedding',amount = 3},
					{name='vrauksfood02',amount =4},
					{name='saps',amount = '+7'},
				},
			results =
				{
					{name='cocoon', amount_min = 12,amount_max =18},
				},
			crafting_speed = 80,
			tech = 'vrauks-mk02'
		},
		--py
		{
			ingredients =
				{
					{name='vrauks',amount ='+2'},
					{name='vrauksfood01',amount ='+5'},
					{name='vrauksfood02',amount ='+8'},
					{name='bedding',amount = '+5'},
					{name='honeycomb', amount = 4},
					{name='syrupbarrel',amount=2,return_item={name='empty-barrel',amount=2}},
					{name='fawogae',amount = 5},
				},
			results =
				{
					{name='cocoon', amount_min = 15,amount_max =25},
				},
			crafting_speed = 50,
			tech = 'vrauks-mk03'
		},
		--production
		{
			ingredients =
				{
					{name='vrauks',amount ='+2'},
					{name='vrauksfood01',amount ='+5'},
					{name='vrauksfood02',amount ='+8'},
					{name='bedding',amount = '+5'},

				},
			results =
				{
					{name = 'cocoon', amount = 'R'},
					{name = 'cocoon', amount = 40}
				},
			crafting_speed = 20,
			tech = 'assisted-embryology'
		},
	}
}
