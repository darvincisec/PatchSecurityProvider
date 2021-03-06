.class public Lorg/spongycastle/asn1/x509/AccessDescription;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AccessDescription.java"


# static fields
.field public static final id_ad_caIssuers:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_ad_ocsp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

.field accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.2"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/AccessDescription;->id_ad_caIssuers:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "location"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong number of elements in sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AccessDescription;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lorg/spongycastle/asn1/x509/AccessDescription;

    .line 40
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/x509/AccessDescription;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AccessDescription;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAccessLocation()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 88
    .local v0, "accessDescription":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 89
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessDescription: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
