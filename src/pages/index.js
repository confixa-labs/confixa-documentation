import { useEffect } from 'react';
import { useHistory } from '@docusaurus/router';
import Layout from '@theme/Layout';

export default function Home() {
  const history = useHistory();

  useEffect(() => {
    history.push('/introduction/overview'); // 👈 change this to your target route
  }, [history]);

  return (
    <Layout>
      <main style={{ textAlign: 'center', paddingTop: '50px' }}>
        <p>Redirecting to documentation...</p>
      </main>
      {/* You can also include a message or spinner if you want */}
    </Layout>
  );
}