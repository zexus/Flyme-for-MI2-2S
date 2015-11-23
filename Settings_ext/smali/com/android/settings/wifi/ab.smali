.class Lcom/android/settings/wifi/ab;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private avw:Z

.field final synthetic avx:Z

.field final synthetic avy:Lcom/android/settings/wifi/aa;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/aa;Z)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/wifi/ab;->avy:Lcom/android/settings/wifi/aa;

    iput-boolean p2, p0, Lcom/android/settings/wifi/ab;->avx:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/wifi/ab;->avx:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/ab;->avw:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wifi/ab;->avw:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/ab;->avw:Z

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/ab;->avy:Lcom/android/settings/wifi/aa;

    invoke-static {v0}, Lcom/android/settings/wifi/aa;->a(Lcom/android/settings/wifi/aa;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/ab;->avy:Lcom/android/settings/wifi/aa;

    invoke-static {v0}, Lcom/android/settings/wifi/aa;->a(Lcom/android/settings/wifi/aa;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/ab;->avw:Z

    iput-boolean v1, v0, Lcom/android/settings/wifi/AccessPoint;->asj:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ab;->avy:Lcom/android/settings/wifi/aa;

    iget-boolean v1, p0, Lcom/android/settings/wifi/ab;->avw:Z

    invoke-static {v0, v1}, Lcom/android/settings/wifi/aa;->a(Lcom/android/settings/wifi/aa;Z)V

    .line 141
    check-cast p1, Landroid/widget/ImageView;

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/wifi/ab;->avw:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0202a0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :cond_2
    const v0, 0x7f020293

    goto :goto_1
.end method
