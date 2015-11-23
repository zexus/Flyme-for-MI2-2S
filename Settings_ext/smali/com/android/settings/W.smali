.class Lcom/android/settings/W;
.super Landroid/database/ContentObserver;
.source "BaseEnabler.java"


# instance fields
.field final synthetic bW:Lcom/android/settings/V;


# direct methods
.method constructor <init>(Lcom/android/settings/V;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/android/settings/W;->bW:Lcom/android/settings/V;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/W;->bW:Lcom/android/settings/V;

    iget-object v0, v0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    iget-object v0, p0, Lcom/android/settings/W;->bW:Lcom/android/settings/V;

    invoke-virtual {v0}, Lcom/android/settings/V;->update()V

    .line 20
    iget-object v0, p0, Lcom/android/settings/W;->bW:Lcom/android/settings/V;

    iget-object v0, v0, Lcom/android/settings/V;->bU:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/settings/W;->bW:Lcom/android/settings/V;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 21
    return-void
.end method
