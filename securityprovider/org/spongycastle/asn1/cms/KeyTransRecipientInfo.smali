.class public Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "KeyTransRecipientInfo.java"


# instance fields
.field private encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

.field private keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private rid:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/RecipientIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/RecipientIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 4
    .param p1, "rid"    # Lorg/spongycastle/asn1/cms/RecipientIdentifier;
    .param p2, "keyEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "encryptedKey"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/RecipientIdentifier;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 47
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    .line 48
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 50
    return-void

    .line 44
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v0, :cond_0

    .line 82
    check-cast p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    .line 90
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 85
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 87
    new-instance v0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEncryptedKey()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipientIdentifier()Lorg/spongycastle/asn1/cms/RecipientIdentifier;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 120
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 121
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/spongycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
