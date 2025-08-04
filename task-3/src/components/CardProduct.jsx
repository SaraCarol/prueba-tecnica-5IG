/* eslint-disable no-unused-vars */
import { useProducts } from '../context/ProductContext';
import { Card, CardMedia, CardContent, Typography, CardActions, Button } from "@mui/material";
import styles from '../styles/CardProduct.module.css';

const CardProduct = ({producto}) =>{
    const { products, loading, error } = useProducts();
    

    return (
        <Card className={styles.card}>
            <CardMedia className={styles.img}
                component="img"
                image={producto.images?.[0] || "https://placehold.co/600x400"}
                alt={producto.title}
            />
            <CardContent>
                <Typography className={styles.title}>{producto.title}</Typography>
                <Typography >
                    {producto.description}
                </Typography>
                <Typography >
                    ${producto.price}
                </Typography>
            </CardContent>
            <CardActions>
                <Button size="small">Ver más</Button>
            </CardActions>
        </Card>
    );
};

export default CardProduct;