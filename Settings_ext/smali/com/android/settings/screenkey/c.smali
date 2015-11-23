.class Lcom/android/settings_ext/screenkey/c;
.super Landroid/widget/BaseAdapter;
.source "ScreenKeySettings.java"


# instance fields
.field final synthetic aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/screenkey/ScreenKeySettings;Lcom/android/settings_ext/screenkey/b;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings_ext/screenkey/c;-><init>(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->c(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->c(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->c(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->c(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    const v2, 0x7f04010a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    const v0, 0x7f100299

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ext/screenkey/c;->aix:Lcom/android/settings_ext/screenkey/ScreenKeySettings;

    invoke-static {v3}, Lcom/android/settings_ext/screenkey/ScreenKeySettings;->a(Lcom/android/settings_ext/screenkey/ScreenKeySettings;)Landroid/widget/SortableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    const v0, 0x7f100298

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settings_ext/screenkey/a;->getName(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v0, 0x7f100297

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/settings_ext/screenkey/a;->getImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    return-object v2
.end method
