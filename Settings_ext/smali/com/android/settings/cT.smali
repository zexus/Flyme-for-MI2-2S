.class Lcom/android/settings_ext/cT;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic oa:Lcom/android/settings_ext/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MasterClear;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ext/cT;->oa:Lcom/android/settings_ext/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/cT;->oa:Lcom/android/settings_ext/MasterClear;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings_ext/MasterClear;->a(Lcom/android/settings_ext/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/cT;->oa:Lcom/android/settings_ext/MasterClear;

    invoke-static {v0}, Lcom/android/settings_ext/MasterClear;->a(Lcom/android/settings_ext/MasterClear;)V

    .line 116
    :cond_0
    return-void
.end method
