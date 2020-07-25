.class public Lorg/spongycastle/jcajce/PBKDF1Key;
.super Ljava/lang/Object;
.source "PBKDF1Key.java"

# interfaces
.implements Lorg/spongycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/spongycastle/crypto/CharToByteConverter;

.field private final password:[C


# direct methods
.method public constructor <init>([CLorg/spongycastle/crypto/CharToByteConverter;)V
    .locals 3
    .param p1, "password"    # [C
    .param p2, "converter"    # Lorg/spongycastle/crypto/CharToByteConverter;

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    .line 23
    iput-object p2, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    .line 25
    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "PBKDF1"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    iget-object v1, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->converter:Lorg/spongycastle/crypto/CharToByteConverter;

    invoke-interface {v0}, Lorg/spongycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/jcajce/PBKDF1Key;->password:[C

    return-object v0
.end method
