/* eslint-disable react-refresh/only-export-components */
/* eslint-disable no-unused-vars */
import { Card, Container, Grid, Box } from '@mui/material';
import { useProducts } from '../context/ProductContext';
import CardProduct from '../components/CardProduct';
import styles from '../styles/Home.module.css'

const Home = () => {
    const { products, loading, error } = useProducts();
    const getScreenSize = () => {
        const width = window.innerWidth;
        if (width < 600) return "mobile"; 
        if (width >= 600 && width < 960) return "tablet"; 
        return "desktop";
    };
    console.log(products)

    return(
        <Container className={styles.contenedor}>

            <Box className={styles.productos}>
                {products.map( producto =>(
                    <Box item key={producto.id} className={styles.contenidoCard}>
                        <CardProduct producto={producto} />
                    </Box>
                ))}
            </Box>
        
        </Container>
    );
};

export default Home;