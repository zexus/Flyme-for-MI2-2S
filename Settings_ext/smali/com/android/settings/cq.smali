.class Lcom/android/settings_ext/cq;
.super Landroid/telephony/PhoneStateListener;
.source "FieldTestInfo.java"


# instance fields
.field final synthetic lx:Lcom/android/settings_ext/FieldTestInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ext/cq;->lx:Lcom/android/settings_ext/FieldTestInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/cq;->lx:Lcom/android/settings_ext/FieldTestInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/FieldTestInfo;->a(Lcom/android/settings_ext/FieldTestInfo;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
