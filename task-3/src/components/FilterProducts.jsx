/* eslint-disable no-unused-vars */
import { useState } from "react";
import {Button, Drawer, Box, Typography, FormGroup, FormControlLabel, Radio, Divider, Container, 
    FormControl, FormLabel, RadioGroup
} from "@mui/material"
import { useCategories } from "../context/CategoryContext";
import { useProducts } from "../context/ProductContext";

const FilterProducts = () =>{
    const {categories} = useCategories();
    const {fetchProducts} = useProducts();;

    const priceRanges = [
        { label: "1 - 10", min: 1, max: 10 },
        { label: "11 - 20", min: 11, max: 20 },
        { label: "21 - 30", min: 21, max: 30 },
        { label: "31 - 50", min: 31, max: 50 },
        { label: "51+", min: 51, max: 9999 },
    ];

    const [open, setOpen] = useState(false);
    const [categorySelected, setCategorySelected] = useState("");
    const [priceRangeSelected, setPriceRangeSelected] = useState("");
    const toggleDrawer = () => setOpen(!open)

    const applyFilters = () =>{
        const filters={}

        if(categorySelected && categorySelected !== ""){
            filters.categoryId = categorySelected
            console.log(filters.categoryId)
        }

        if(priceRangeSelected && priceRangeSelected !== ""){
            const range = priceRanges.find((r) => r.label === priceRangeSelected)
            if(range){
                filters.price_min = range.min
                filters.price_max = range.max
            }
        }

        fetchProducts(filters)
        toggleDrawer();

    }

    return(
        <Container>

            <Button onClick={toggleDrawer} variant="outlined" sx={{ mb: 2 }}>
                Filter
            </Button>
            <Drawer open={open} onClose={toggleDrawer}> 
                <Box>
                    <Typography variant="h6" gutterBottom>
                        Filter by
                    </Typography>

                    <Divider sx={{ mb: 2 }} />

                    <FormControl component="fieldset" sx={{ mb: 3 }}>
                        <FormLabel component="legend">Categories</FormLabel>
                            <RadioGroup
                                value={categorySelected}
                                onChange={(e) => setCategorySelected(e.target.value)}
                                >
                                {categories.map((cat) => (
                                    <FormControlLabel
                                        key={cat.id}
                                        value={String(cat.id)}
                                        control={<Radio />}
                                        label={cat.name}
                                    />
                                ))}
                            </RadioGroup>
                    </FormControl>

                    <Divider sx={{ mb: 2 }} />

                    <FormControl component="fieldset" sx={{ mb: 3 }}>
                        <FormLabel component="legend">Price Range</FormLabel>
                        <RadioGroup
                        value={priceRangeSelected}
                        onChange={(e) => setPriceRangeSelected(e.target.value)}
                        >
                        {priceRanges.map((range) => (
                            <FormControlLabel
                                key={range.label}
                                value={range.label}
                                control={<Radio />}
                                label={`$${range.label}`}
                            />
                        ))}
                        </RadioGroup>
                    </FormControl>

                    <Button
                        variant="contained"
                        color="primary"
                        fullWidth
                        onClick={applyFilters}
                    >
                        Apply Filters
                    </Button>
                </Box>
            </Drawer>
        </Container>
    );
};

export default FilterProducts;