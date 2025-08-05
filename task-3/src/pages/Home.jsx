/* eslint-disable react-refresh/only-export-components */
/* eslint-disable no-unused-vars */
import { useState } from "react";
import { Card, Container, Grid, Box } from '@mui/material';
import Pagination from '@mui/material/Pagination';
import { useProducts } from '../context/ProductContext';
import CardProduct from '../components/CardProduct';
import styles from '../styles/Home.module.css';

const Home = () => {
    const { products, loading, error } = useProducts();
    const [currentPage, setCurrentPage] = useState(1);

    const productsPerPage = 8;
    const indexOfLastProduct = currentPage * productsPerPage;
    const indexOfFirstProduct = indexOfLastProduct - productsPerPage;
    const currentProducts = products.slice(indexOfFirstProduct, indexOfLastProduct);
    const totalPages = Math.ceil(products.length / productsPerPage);
    console.log(products)

    return(
        <Container className={styles.container}>

        <Container className={styles.containerProducts}>
            <Box className={styles.products}>
                {currentProducts.map( producto =>(
                    <Box item key={producto.id} className={styles.boxCard}>
                        <CardProduct producto={producto} />
                    </Box>
                ))}
            </Box>
            <Box className={styles.pagination} >
                <Pagination
                    count={totalPages}
                    page={currentPage}
                    onChange={(e, value) => setCurrentPage(value)}
                    color="primary"
                />
            </Box>
        </Container>
            
        
        </Container>
    );
};

export default Home;