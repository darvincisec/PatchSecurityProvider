.class public Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;
.super Lorg/spongycastle/jcajce/PBKDF2Key;
.source "PBKDF2KeyWithParameters.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CLorg/spongycastle/crypto/CharToByteConverter;[BI)V
    .locals 1
    .param p1, "password"    # [C
    .param p2, "converter"    # Lorg/spongycastle/crypto/CharToByteConverter;
    .param p3, "salt"    # [B
    .param p4, "iterationCount"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/PBKDF2Key;-><init>([CLorg/spongycastle/crypto/CharToByteConverter;)V

    .line 30
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->salt:[B

    .line 31
    iput p4, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->iterationCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->salt:[B

    return-object v0
.end method
