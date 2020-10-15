Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A815D28EB29
	for <lists+tipc-discussion@lfdr.de>; Thu, 15 Oct 2020 04:26:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kSsxi-0004im-2s; Thu, 15 Oct 2020 02:25:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1kSsxg-0004ie-Dk
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Oct 2020 02:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DLsZyw0VpwKrCYvlui12xpj2NjHJrNKGugLQMM8sgro=; b=fBMiBWYlTEfYSchuXQ/SxcnsJ+
 uBVx6OG5AyL8vdbK8lCLoujC9MRlVrP7YfNnAaIrD5UGgdJknxlzMtVpncytrOUiD5sYPWUPaKhGW
 X+4R4y817gCKH87q8i8mff3+KFSIxDTlPnnEN72O2dMvh0PCtxRUmqWyOLqmanwCE3YI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DLsZyw0VpwKrCYvlui12xpj2NjHJrNKGugLQMM8sgro=; b=CfBYel2fTusBbtgfvEr7i9zpK9
 LaQ9+vE7rWcO2ICu8mCZ6byupOtygfeu5iBUbkl7ETvOXhVkLLhsfWazKTX2ghVCDe7KgRCZj3yC6
 zlnEgDpecHT1uM7tp42q43NSwXeeYSzL4yrtThYegK0D8yAYlXbI0IugXXq69LqqCfLw=;
Received: from mail-eopbgr70091.outbound.protection.outlook.com ([40.107.7.91]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kSsxP-00G3hu-Bu
 for tipc-discussion@lists.sourceforge.net; Thu, 15 Oct 2020 02:25:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGsmw1zXD/9OdtIOjuDAYe6lpfNZ0J5pUEQjDRewt1yIDVe/A0ZOmj8HTkpf7oFT2LgZk94k98URDBrAWvQn6L1mibfH7bWhemCoRRjXPHi4F/1fg3eP4MMrEEDmMHa+Ph23evK9qQNnvDtjjH/FmnVtd2ZqUeclww+Mfu2ziyFlvS4iamVdfyi2WTocDloU6zD4D/mK579FPXc1uhn9yF38MaUiAseNyE1cH37CWhIcHMQNlk+YD78ZaOohqr9CeRLoimbCgEjPUKrUe8g/mAKUNvOMLqjQ6s3AoxhQ/hRf7Xg/0cXurBaUykr6CrlH0kyRAREAcQl5iIUmAHdWTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DLsZyw0VpwKrCYvlui12xpj2NjHJrNKGugLQMM8sgro=;
 b=d94nMylAQZmwbdfOi5e0Cf5RNyC2FBPn2LBrRETZGL6CLUuf5ov5S33F0JqZoZgJh9W55NejUR2W2JT0b3kXhvr8aPCkWdXEFIKU45chAdGKx3fQdgpUkOy4OsOza7G5JYz0LgaQ9PwjQ4fKdIYPewefNqt6DC01NMzrtPWlxfXGocfiAj/ojplx24k56K6rPAnZEr6bdSgRPvuFXxt5t/io3t6e/+LwZQyJBQ8bZj04zLEmfeCJTOcoL46ZGatkD1H/uHbFgIu8z8brjBb6qcjtFFCSFvW+18gaRNJ4FVSd8juedCgS46RBm5iIa/I8lNAYr+qHfVhCjXKHD2gErw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DLsZyw0VpwKrCYvlui12xpj2NjHJrNKGugLQMM8sgro=;
 b=vAgVHHMKrKH0yL5xW/kBmWIQaHaAwEr3POUxZWfZEZjzmSvMBCpL2ytcA7YEVizYep22s/BxEG11NsgNu3Ksrx0+GMSUjCef4qxl4mTUsPjYB+I1OeH3wUOJgIJkspMA4QwmAQr9OM3yxunxJ/14Re4db3jFSK0nANiz3eYnin4=
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com (2603:10a6:802:61::21)
 by VI1PR0502MB2944.eurprd05.prod.outlook.com (2603:10a6:800:ba::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.21; Thu, 15 Oct
 2020 02:25:11 +0000
Received: from VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4]) by VI1PR05MB4605.eurprd05.prod.outlook.com
 ([fe80::2459:8421:b4ec:dcb4%6]) with mapi id 15.20.3455.031; Thu, 15 Oct 2020
 02:25:11 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [net] tipc: re-configure queue limit for broadcast link
Thread-Index: AQHWoSinCT30tNRl3EK1GSMaKHGEkamX1yMAgAAZ3uA=
Date: Thu, 15 Oct 2020 02:25:11 +0000
Message-ID: <VI1PR05MB4605F8A613096438E987FC10F1020@VI1PR05MB4605.eurprd05.prod.outlook.com>
References: <20201013061810.77866-1-hoang.h.le@dektech.com.au>
 <20201014174716.44b4fca3@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201014174716.44b4fca3@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23cee97f-b647-4aa4-fa88-08d870b18ad4
x-ms-traffictypediagnostic: VI1PR0502MB2944:
x-microsoft-antispam-prvs: <VI1PR0502MB2944190719F971AB52C9D3C1F1020@VI1PR0502MB2944.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:486;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JzOvCrL0YH9TSXuzEmJcBeu4Bi0dNeywIGhnF4RDp70Fn/oPu4+lNRtnUfk3ppvMHz4jw6TWGAujZvvYCBxXT7kAM2smb2mIyhkjI+l6Jmtbx0xZWkwz0VZy0XmezhqjvkA8pOG5jV4lBETBzTh36UJFkabQbGN+LnNnxREv88MZFhrW91ZIyBhcG6VOSAgbADATLmESQAtMw0X0rr7TlbO7YqlI0b+BBLJuoM51Uaxs8U8uQbVj+1Pajcvc1/cl/VUt4C2TbSvgXcqKtVSrq5T4Cc+f0nE3EUx8qNgg1IG/hB5YqivdH8TuYT+PJmKla0p9RFxhHgfZaTy7T2mBkw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR05MB4605.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(396003)(39840400004)(346002)(366004)(54906003)(33656002)(66946007)(7696005)(55016002)(186003)(2906002)(5660300002)(83380400001)(9686003)(316002)(8936002)(4326008)(71200400001)(52536014)(478600001)(66446008)(66476007)(8676002)(64756008)(66556008)(53546011)(86362001)(26005)(6916009)(6506007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wtc0dVn9HlLXb3x+RfdTksVrh1vWJMBmHgXK3eNG1K+khzSojRFoY7AKjDQlRByZqJjj3LmGPd7yCosiSFXidZ74jvbhRgdfwPMlhWOkDIZf6zMIvqyP435cby4n2qVczzA6iYhoi0R9GFe3mtNZkSHtsZLWZ41Z6h8EufHA6dLMrtdiFvoFY6kM5tmOyt2poI+HTysHDSzf5cFtcifvYHNMXHh+ajfkBk618QNfD+SR79hf/qnIbhcYbli0FF6CHd0lhBcUd2ivPd0v6mkGa/xyBHYNA+U0t6/2UkMZCa3rrDoPtiKUhquQBrxmqQd7egegqQoNjWNDKSJSvf0eBt0VrgvOPabVWYAvmxkCtt3eryZMsAzYTh/9uK9lmsrxxjRZs4SgGH7icEpSo8Wkn/sgGocouUkK6J+r18vIZacEdgzPSqPRASbkLlDw5YwbygbUoVjowmIC72XbTv7NUUNqlJ3YrpSgEepTh68ovRRyTEjYj/IJGB2xQD952Y1bftZhzmbFD96Bzp4zYzYkrBA/2pSmHTtYIeI6nPzW22Yq3tbXT4qbJlQ/LiS8zI70ldqAYCENjrSwwWnttoS+YDlPC0ArXPtrovMHc7tWuWUPF5k+wDyMHU15fAt8pdCz0LxdnuQb3YP4mIxoE/7R8A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR05MB4605.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23cee97f-b647-4aa4-fa88-08d870b18ad4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2020 02:25:11.2021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7CD8t5MBjP1cM2s3CMxnvAZlvzxLETos1UgsaHSb1UBc80oE+U+nVuxdFmB2FWRfJcywW/JGUFuHe656Z2tFLfwO/+il2xrRmKdCE2Uh90k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2944
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.91 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kSsxP-00G3hu-Bu
Subject: Re: [tipc-discussion] [net] tipc: re-configure queue limit for
 broadcast link
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Thanks for your reviewing.
Yes, in this commit, we intend to fix the queue calculation limited, and, 
besides we're planning to fix both in another fix. However, it should be used the default (i.e BCLINK_WIN_DEFAULT) one.
Since, we keep to choose fix window size for broadcast link.

Regards,
Hoang
> -----Original Message-----
> From: Jakub Kicinski <kuba@kernel.org>
> Sent: Thursday, October 15, 2020 7:47 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>
> Cc: tipc-discussion@lists.sourceforge.net; jmaloy@redhat.com; maloy@donjonn.com; ying.xue@windriver.com;
> netdev@vger.kernel.org
> Subject: Re: [net] tipc: re-configure queue limit for broadcast link
> 
> On Tue, 13 Oct 2020 13:18:10 +0700 Hoang Huu Le wrote:
> > The queue limit of the broadcast link is being calculated base on initial
> > MTU. However, when MTU value changed (e.g manual changing MTU on NIC
> > device, MTU negotiation etc.,) we do not re-calculate queue limit.
> > This gives throughput does not reflect with the change.
> >
> > So fix it by calling the function to re-calculate queue limit of the
> > broadcast link.
> >
> > Acked-by: Jon Maloy <jmaloy@redhat.com>
> > Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> > ---
> >  net/tipc/bcast.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> > index 940d176e0e87..c77fd13e2777 100644
> > --- a/net/tipc/bcast.c
> > +++ b/net/tipc/bcast.c
> > @@ -108,6 +108,7 @@ static void tipc_bcbase_select_primary(struct net *net)
> >  {
> >  	struct tipc_bc_base *bb = tipc_bc_base(net);
> >  	int all_dests =  tipc_link_bc_peers(bb->link);
> > +	int max_win = tipc_link_max_win(bb->link);
> >  	int i, mtu, prim;
> >
> >  	bb->primary_bearer = INVALID_BEARER_ID;
> > @@ -121,8 +122,11 @@ static void tipc_bcbase_select_primary(struct net *net)
> >  			continue;
> >
> >  		mtu = tipc_bearer_mtu(net, i);
> > -		if (mtu < tipc_link_mtu(bb->link))
> > +		if (mtu < tipc_link_mtu(bb->link)) {
> >  			tipc_link_set_mtu(bb->link, mtu);
> > +			tipc_link_set_queue_limits(bb->link, max_win,
> > +						   max_win);
> 
> Is max/max okay here? Other places seem to use BCLINK_WIN_MIN.
> 
> > +		}
> >  		bb->bcast_support &= tipc_bearer_bcast_support(net, i);
> >  		if (bb->dests[i] < all_dests)
> >  			continue;



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
