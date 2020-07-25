.class public Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 0
    .param p1, "subjectKeyIdentifier"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p2, "date"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p3, "other"    # Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 40
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid RecipientKeyIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 90
    :goto_0
    :pswitch_1
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 85
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;-><init>([BLorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V

    .line 58
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/cms/OtherKeyAttribute;)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "date"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p3, "other"    # Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 50
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    if-eqz v0, :cond_0

    .line 123
    check-cast p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    .line 131
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 126
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 128
    new-instance v0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;
    .locals 1
    .param p0, "ato"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "isExplicit"    # Z

    .prologue
    .line 103
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getOtherKeyAttribute()Lorg/spongycastle/asn1/cms/OtherKeyAttribute;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 159
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/spongycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
