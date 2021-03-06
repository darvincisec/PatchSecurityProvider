.class public Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SM2P256V1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 28
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SM2P256V1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    .line 24
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 68
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->add([I[I[I)V

    .line 70
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->addOne([I[I)V

    .line 77
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 97
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 98
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 99
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 100
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 192
    if-ne p1, p0, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 203
    :goto_0
    return v1

    .line 197
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    if-nez v1, :cond_1

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 202
    check-cast v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    .line 203
    .local v0, "o":Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SM2P256V1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 208
    sget-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 121
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 122
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 89
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 91
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->negate([I[I)V

    .line 107
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    .prologue
    .line 140
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    .line 141
    .local v2, "x1":[I
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat256;->isOne([I)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v11, p0

    .line 187
    :goto_0
    return-object v11

    .line 146
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 147
    .local v4, "x2":[I
    invoke-static {v2, v4}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->square([I[I)V

    .line 148
    invoke-static {v4, v2, v4}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 149
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 150
    .local v8, "x4":[I
    const/4 v11, 0x2

    invoke-static {v4, v11, v8}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 151
    invoke-static {v8, v4, v8}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 152
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 153
    .local v9, "x6":[I
    const/4 v11, 0x2

    invoke-static {v8, v11, v9}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 154
    invoke-static {v9, v4, v9}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 155
    move-object v3, v4

    .line 156
    .local v3, "x12":[I
    const/4 v11, 0x6

    invoke-static {v9, v11, v3}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 157
    invoke-static {v3, v9, v3}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 158
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 159
    .local v5, "x24":[I
    const/16 v11, 0xc

    invoke-static {v3, v11, v5}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 160
    invoke-static {v5, v3, v5}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 161
    move-object v6, v3

    .line 162
    .local v6, "x30":[I
    const/4 v11, 0x6

    invoke-static {v5, v11, v6}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 163
    invoke-static {v6, v9, v6}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 164
    move-object v7, v9

    .line 165
    .local v7, "x31":[I
    invoke-static {v6, v7}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->square([I[I)V

    .line 166
    invoke-static {v7, v2, v7}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 168
    move-object v0, v5

    .line 169
    .local v0, "t1":[I
    const/16 v11, 0x1f

    invoke-static {v7, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 171
    move-object v10, v6

    .line 172
    .local v10, "x62":[I
    invoke-static {v0, v7, v10}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 174
    const/16 v11, 0x20

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 175
    invoke-static {v0, v10, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 176
    const/16 v11, 0x3e

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 177
    invoke-static {v0, v10, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 178
    const/4 v11, 0x4

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 179
    invoke-static {v0, v8, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 180
    const/16 v11, 0x20

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 181
    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->multiply([I[I[I)V

    .line 182
    const/16 v11, 0x3e

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->squareN([II[I)V

    .line 184
    move-object v1, v8

    .line 185
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->square([I[I)V

    .line 187
    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v11, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->square([I[I)V

    .line 114
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 82
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->subtract([I[I[I)V

    .line 84
    new-instance v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat256;->getBit([II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
