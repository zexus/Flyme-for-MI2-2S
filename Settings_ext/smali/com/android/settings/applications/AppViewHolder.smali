.class public Lcom/android/settings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public DA:Landroid/widget/ImageView;

.field public DB:Landroid/widget/TextView;

.field public DC:Landroid/widget/TextView;

.field public DD:Landroid/widget/CheckBox;

.field public Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field public Dy:Landroid/view/View;

.field public Dz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f04007a

    invoke-static {p0, p1, v0}, Lcom/android/settings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;I)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/View;I)Lcom/android/settings/applications/AppViewHolder;
    .locals 3

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 34
    new-instance v1, Lcom/android/settings/applications/AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/applications/AppViewHolder;-><init>()V

    .line 35
    iput-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->Dy:Landroid/view/View;

    .line 36
    const v0, 0x7f100014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f100013

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->DA:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f1000a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f1000a6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f1000a7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    .line 41
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;I)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EW:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 54
    packed-switch p2, :pswitch_data_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
