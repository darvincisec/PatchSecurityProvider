.class public Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;
.super Lorg/spongycastle/jcajce/PKCS12Key;
.source "PKCS12KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CZ[BI)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z
    .param p3, "salt"    # [B
    .param p4, "iterationCount"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 46
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 47
    iput p4, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    .line 48
    return-void
.end method

.method public constructor <init>([C[BI)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "salt"    # [B
    .param p3, "iterationCount"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/PKCS12Key;-><init>([C)V

    .line 28
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    .line 29
    iput p3, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    .line 30
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object v0
.end method
