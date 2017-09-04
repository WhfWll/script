.class public final Lil;
.super Ljava/security/Provider;


# static fields
.field private static a:Ljava/lang/String;

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "BouncyCastle Security Provider v1.49b"

    sput-object v0, Lil;->a:Ljava/lang/String;

    new-instance v0, Lin;

    invoke-direct {v0}, Lin;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "PBEPBKDF2"

    aput-object v1, v0, v3

    const-string v1, "PBEPKCS12"

    aput-object v1, v0, v4

    sput-object v0, Lil;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SipHash"

    aput-object v1, v0, v3

    sput-object v0, Lil;->b:[Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AES"

    aput-object v1, v0, v3

    const-string v1, "ARC4"

    aput-object v1, v0, v4

    const-string v1, "Blowfish"

    aput-object v1, v0, v5

    const-string v1, "Camellia"

    aput-object v1, v0, v6

    const-string v1, "CAST5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CAST6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DES"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DESede"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GOST28147"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Grainv1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Grain128"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HC128"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HC256"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "IDEA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Noekeon"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RC2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RC5"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RC6"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Rijndael"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Salsa20"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SEED"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Serpent"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Skipjack"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TEA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Twofish"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "VMPC"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "VMPCKSA3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "XTEA"

    aput-object v2, v0, v1

    sput-object v0, Lil;->c:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "X509"

    aput-object v1, v0, v3

    const-string v1, "IES"

    aput-object v1, v0, v4

    sput-object v0, Lil;->d:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DSA"

    aput-object v1, v0, v3

    const-string v1, "DH"

    aput-object v1, v0, v4

    const-string v1, "EC"

    aput-object v1, v0, v5

    const-string v1, "RSA"

    aput-object v1, v0, v6

    const-string v1, "GOST"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ECGOST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ElGamal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DSTU4145"

    aput-object v2, v0, v1

    sput-object v0, Lil;->e:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GOST3411"

    aput-object v1, v0, v3

    const-string v1, "MD2"

    aput-object v1, v0, v4

    const-string v1, "MD4"

    aput-object v1, v0, v5

    const-string v1, "MD5"

    aput-object v1, v0, v6

    const-string v1, "SHA1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "RIPEMD128"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RIPEMD160"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RIPEMD256"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RIPEMD320"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SHA224"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SHA256"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SHA384"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHA512"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SHA3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Tiger"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Whirlpool"

    aput-object v2, v0, v1

    sput-object v0, Lil;->f:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BC"

    aput-object v1, v0, v3

    const-string v1, "PKCS12"

    aput-object v1, v0, v4

    sput-object v0, Lil;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-string v0, "BC"

    const-wide v2, 0x3ff7c28f5c28f5c3L

    sget-object v1, Lil;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lim;

    invoke-direct {v0, p0}, Lim;-><init>(Lil;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lil;)V
    .registers 3

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lil;->f:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lil;->a:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lil;->b:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.symmetric."

    sget-object v1, Lil;->c:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric."

    sget-object v1, Lil;->d:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.asymmetric."

    sget-object v1, Lil;->e:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lil;->g:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lil;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.RFC3281"

    const-string v1, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.RFC3281"

    const-string v1, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.RFC3280"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.RFC3280"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lil;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_78

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$Mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_2b} :catch_79

    move-result-object v1

    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_52

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    :try_start_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Mappings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_50} :catch_79

    move-result-object v1

    goto :goto_2c

    :catch_52
    move-exception v1

    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot create instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, p2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "$Mappings : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_78
    return-void

    :catch_79
    move-exception v2

    goto :goto_2c
.end method
