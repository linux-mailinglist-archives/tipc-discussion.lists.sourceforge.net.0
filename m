Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEA41041FE
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 18:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aDOTQDbH2NtzFHW8BRsg76QmCFpZSd/OLBS4g4Iiv+U=; b=Odnnb11hqhS71tKyA+OZvoiyH
	7u3YlawVCDHLpWvGnDuD6PGy6ALifmZNMjbkGABTlHnA7CUH2jIxSPfQ3hPEb3AG9glYIdT32j273
	6BGsCDYnf3jWBJ4ImqZXrHWIkafvLvBA9qsSsMLuAnUQbq7+5MOTHBtHrvn0ByJB4FGO8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXTgf-00089e-33; Wed, 20 Nov 2019 17:22:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iXTgd-00089Q-HZ
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SqBiCikQTbpNDfpA2N2fBX9GnW6gRX39xSxNv9UXHvM=; b=NGQ6nbNuwUNv9A7oAfYk3kabbG
 HpQ04JMF8iQaBgDGWa6KyutO7tf3c/EsIoFJrjk8sY1DD0mYYnVt0f/maVX8m0k9ANuksHOCzyF1g
 rbMntNIwx28J+0zqzYUJ+1tKCLYVu37HXUs8TsobNsQ3EzbQlu1sdeUMS+L1oznE301U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SqBiCikQTbpNDfpA2N2fBX9GnW6gRX39xSxNv9UXHvM=; b=d5VCumTX/a9QaiJoTfcB5bQAWC
 fpDlm7uquOFSJzQDR92PzdfrRzTLUplPLCC4yhSsERG3EI0khsD+cTrRMYspX1Hrf+G6iF7XyAUTK
 j6vDHdWXvYE0jWdictU1N9vdEunCykAUFzOj8cSWJgQaX/ZuajReB+XFYIfCZ82AOtms=;
Received: from mail-eopbgr680050.outbound.protection.outlook.com
 ([40.107.68.50] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXTgZ-00ELkT-Vo
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:22:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=djWVrUYqpim5pSPRHLgW1CxFq/55HWcXfTeIzkXahwN5ixCEc8S6vqt4Vo3UFL+0SCMjbsIfOzn4e4g0uSf69RxCbUO3J/aSIwSsFYhOSGBd96oc0dxmrF4XkouGavybx+8UowRY9RrFwZmYgrBnQ+3hYor0xWskqQD/KO/S0wq9kVnxUpHHyjp72k4bRoo/f8QgZLttEP9Ktc3lOJ0MNhs1dtHrqr1LHA1r3rKG/vAYefxk2KRAh1CP7T2ECMjMMIgDC7HZhBM7P7hvy4bt4nU6/6ehBAd7IOh2nQbAFKu2RKBtldU0wusXp4n4YYBEmHWwo50nYes+/TGXhxE70Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SqBiCikQTbpNDfpA2N2fBX9GnW6gRX39xSxNv9UXHvM=;
 b=nIQhr22HSN1U4EFbaHkuLMpmZipSspMdDeYe7Xlv/rXBKD6qA3u8T2Gtg+n7pYSmzUGa0W8tSXL21wJXH6xtcNzcrjO0kcyU5YV2l67OPKOqUF8pQoftgzdP1hTlCfw3AJpDJSuF5TTznkRIb54S09GKoNfkWLzp1wmJVBA10Ls4fo8PsGWEGaN8d+X4VOjmyW6BaQb8a65Hew5nrn0JQFm6Y3He1nPqXgmCStdNo6UIBqy/IzIbh2lE1jGTCudTOvRU9BotpwuYlVt5ETO60YT55Z/0oEA9J4flpDSniZTXWTxeT39VFyOgXu8HPKN/zUqzRfMRe9qQsh5cOs5UQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SqBiCikQTbpNDfpA2N2fBX9GnW6gRX39xSxNv9UXHvM=;
 b=YJwtO1Pn7B4btPRWyi5vTdyVGJyJrE/MclV4/NasySEirYAbdD4tqvXbsgopCNEDJz5npUKHsHX7+su395bIm3k8Mb24qjsDvtH5rSio0E+k3TU24n1cQ3f0BjpG63tDDjBbLCnJd7Jdtk481+PTVJ7l+40xmVw/fxiOAORAVPg=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3719.namprd15.prod.outlook.com (52.132.228.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 20 Nov 2019 17:22:27 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 17:22:27 +0000
To: "Xue, Ying" <Ying.Xue@windriver.com>, Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next v3 1/1] tipc: introduce variable window congestion
 control
Thread-Index: AQHVnmh58DyUHEhAVEy24HTPxtVhQaeStTeAgAGVaXA=
Date: Wed, 20 Nov 2019 17:22:27 +0000
Message-ID: <CH2PR15MB357590DC6DDCC24B9ED546D99A4F0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1574119958-7910-1-git-send-email-jon.maloy@ericsson.com>
 <25A14D9CFAB7B34FB9440F90AFD35233013CAA7C6D@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <25A14D9CFAB7B34FB9440F90AFD35233013CAA7C6D@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cd62197-4657-487c-a248-08d76dde375d
x-ms-traffictypediagnostic: CH2PR15MB3719:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB37195240A57107B676604EE29A4F0@CH2PR15MB3719.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(39860400002)(396003)(346002)(51234002)(13464003)(199004)(189003)(186003)(6116002)(66946007)(4326008)(11346002)(256004)(8936002)(71200400001)(14444005)(446003)(102836004)(3846002)(53546011)(71190400001)(6506007)(8676002)(478600001)(316002)(6436002)(33656002)(486006)(76176011)(110136005)(99286004)(74316002)(44832011)(54906003)(561944003)(66066001)(2906002)(5660300002)(86362001)(229853002)(25786009)(476003)(76116006)(55016002)(52536014)(66476007)(9686003)(64756008)(66446008)(66556008)(81156014)(81166006)(26005)(14454004)(7736002)(30864003)(305945005)(6246003)(7696005)(579004)(559001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3719;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aIIuM5izuk0q4lJ6m33Uqx7FDttw7V2OyQwMmC+2w9ldwvsIMzg9zo+78K/1zi4y7bl5hpIwl5tN0cMnHlQsgn26AtDgy3i0rQ0ONaHtaCH4CrT8YXyfuSrq6wcrfI47tTrlv4TBO9SK1W/PyLpNYXRgl5mI3i7jwBRTcJq5F/nbrIC4XLexl1b8wyTOFYbkPJRQ1wU/H432SK+Kzc+Y+IQwfwjf8GcESGfoL3yBMtDQ8T3ZzkZ9SRAnt3aS2IcWzy+jhCUOs7Byj0/wl5fjjE6BTysYt030gCFbcaCrdiSotmDrN+Si+dWZvk7OxoLKNtl1SlTM9U9CeX0EKy+x/15EPRgcl5FgCu6uxjEq40kSLrO3q+4iJqH0oHfDL+kG5K21NhpxIfdx5j73p+wXQPzpoNUgLkuiZ4ktkZJATlZhawG3YQPtLyxTj4RknfAK
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd62197-4657-487c-a248-08d76dde375d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 17:22:27.3725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6q7EgrybGdDRXKYGc8zsrVoxtySBsKJq/CQkhJn9hv14HnS97ynNSKO5STIbNvBWkRnWjr0AanOCuH4pP4QrpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3719
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iXTgZ-00ELkT-Vo
Subject: Re: [tipc-discussion] [net-next v3 1/1] tipc: introduce variable
 window congestion control
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
From: Jon Maloy via tipc-discussion <tipc-discussion@lists.sourceforge.net>
Reply-To: Jon Maloy <jon.maloy@ericsson.com>
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Mohan Krishna Ghanta Krishnamurthy
 <mohan.krishna.ghanta.krishnamurthy@ericsson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Ying,
See below.

> -----Original Message-----
> From: Xue, Ying <Ying.Xue@windriver.com>
> Sent: 19-Nov-19 11:47
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang
> Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan
> Mihaljevic <gordan.mihaljevic@dektech.com.au>; tipc-discussion@lists.sourceforge.net
> Subject: RE: [net-next v3 1/1] tipc: introduce variable window congestion control
> 
> Hi Jon,
> 
> I don't know you ever remembered many years ago I ever implemented a prototype to introduce slow-
> start and traffic congestion avoidance algorithms on link layer :)
> 
> In my experiment, there were a few of meaningful findings:
> - It was crucial for the throughput performance about how to set initial congestion window and upper
> congestion window size.
> - It was found that different Ethernet speeds, different CPU capabilities and different message sizes all have
> a big impact on throughput performance. I did lots of experiments, as a result, sometimes performance
> improvement was very obvious, but sometimes, performance improvement was minimal even when I
> measured throughput in a similar network environment. Particularly, if I slightly changed some test
> conditions, throughput improvement results were also quite different.
> 
> At that moment, I ever doubted whether we needed to do the following changes:
> 1. Should we introduce a timer to measure RTT and identify whether network congestion happens or not?

Actually, measuring RTT is one of the stated requirements from the Ericsson product line, and I think we should do it.
Our plan was to do this by adding an adequately scaled time stamp to probe/probe-reply messages. This in turn could serve as base to calculate the bandwidth product and window limits.

> 2. Should we change message delivery mode from message-oriented to byte-oriented?

In my original series, sent out Nov. 4th, I did that in an additional patch. However, the solution was intrusive and ugly, and even gave slightly poorer performance than the current packet base one. So I decided to abandon this approach, at least for now.

> 
> Of course, in my experiment I didn't make so big changes.
> 
> So I want to know:
> -  How did you select the minimum window size and maximum window size?

This was done empirically only. Lower than 50 never made any sense, as throughput always would be lower. 
Throughput seemed to improve up to 500, but thereafter there was no improvement.


> -  Did you measure TIPC throughput performance on different Ethernets? Including large message size test
> and small message size test.

I measured it only on virtio. I know this is a weakness, and we should of course try on other drivers as well.

> - Did you meet similar phenomena to me when we slightly changed test condition?

I observed differences, but the overall picture was that this modest change always gave some improvement.

> 
> In this proposal, during slow-start stage, the window increase is pretty slow:
> 
> +	if (qlen >= cwin && (l->snd_nxt - buf_seqno(skb_peek(txq)) == qlen)) {
> +		add = l->cong_acks++ % 32 ? 0 : 1;
> +		cwin = min_t(u16, cwin + add, l->max_win);
> +		l->window = cwin;
> +	}
> 
> But in TCP slow-start algorithm, during slow-start stage congestion window increase is much more
> aggressive than above. As long as congestion window exceeds slow-start threshold, it enters congestion
> avoidance stage in which congestion window increases slowly.
> 
> I am curious why the congestion window increase is pretty conservative compared to TCP slow-start
> algorithm. What factors did you consider when you selected the algorithm?

I did it only because it is simple and gives an obvious improvement.  I am fully aware that the growth is very slow, and that introducing a threshold where we go from a faster growth to a slower one probably would increase average window size and throughput.
I see this as the next step, that we all could experiment with.

However, my approach now is that this very simple change is a low hanging fruit that gives an obvious improvement, so we lose nothing by releasing it as is. Then we can make it subject to further improvements later.

BR
///jon

> 
> Thanks,
> Ying
> 
> -----Original Message-----
> From: Jon Maloy [mailto:jon.maloy@ericsson.com]
> Sent: Tuesday, November 19, 2019 7:33 AM
> To: Jon Maloy; Jon Maloy
> Cc: mohan.krishna.ghanta.krishnamurthy@ericsson.com; parthasarathy.bhuvaragan@gmail.com;
> tung.q.nguyen@dektech.com.au; hoang.h.le@dektech.com.au; tuong.t.lien@dektech.com.au;
> gordan.mihaljevic@dektech.com.au; Xue, Ying; tipc-discussion@lists.sourceforge.net
> Subject: [net-next v3 1/1] tipc: introduce variable window congestion control
> 
> We introduce a simple variable window congestion control for links.
> The algorithm is inspired by the Reno algorithm, and can best be
> descibed as working in permanent "congestion avoidance" mode, within
> strict limits.
> 
> - We introduce hard lower and upper window limits per link, still
>   different and configurable per bearer type.
> 
> - Next, we let a link start at the minimum window, and then slowly
>   increment it for each 32 received non-duplicate ACK. This goes on
>   until it either reaches the upper limit, or until it receives a
>   NACK message.
> 
> - For each non-duplicate NACK received, we let the window decrease by
>   intervals of 1/2 of the current window, but not below the minimum
>   window.
> 
> The change does in reality have effect only on unicast ethernet
> transport, as we have seen that there is no room whatsoever for
> increasing the window max size for the UDP bearer.
> For now, we also choose to keep the limits for the broadcast link
> unchanged and equal.
> 
> This algorithm seems to give a ~25% throughput improvement for large
> messages, while it has no effect on throughput for small messages.
> 
> Suggested-by: Xin Long <lucien.xin@gmail.com>
> Acked-by: Xin Long <lucien.xin@gmail.com>
> Signed-off-by: Jon Maloy <jon.maloy@ericsson.com>
> 
> ---
> v2: - Moved window increment in tipc_advance_backlogq() to before
>       the transfer loop, as suggested Tuong.
>     - Introduced logic for incrementing the window even for the
>       broadcast send link, also suggested by Tuong.
> v3: - Rebased to latest net-next
> ---
>  net/tipc/bcast.c     | 11 ++++----
>  net/tipc/bearer.c    | 11 ++++----
>  net/tipc/bearer.h    |  6 +++--
>  net/tipc/eth_media.c |  6 ++++-
>  net/tipc/ib_media.c  |  5 +++-
>  net/tipc/link.c      | 76 ++++++++++++++++++++++++++++++++++------------------
>  net/tipc/link.h      |  9 ++++---
>  net/tipc/node.c      | 13 +++++----
>  net/tipc/udp_media.c |  3 ++-
>  9 files changed, 90 insertions(+), 50 deletions(-)
> 
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index f41096a..84da317 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -562,18 +562,18 @@ int tipc_bclink_reset_stats(struct net *net)
>  	return 0;
>  }
> 
> -static int tipc_bc_link_set_queue_limits(struct net *net, u32 limit)
> +static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
>  {
>  	struct tipc_link *l = tipc_bc_sndlink(net);
> 
>  	if (!l)
>  		return -ENOPROTOOPT;
> -	if (limit < BCLINK_WIN_MIN)
> -		limit = BCLINK_WIN_MIN;
> -	if (limit > TIPC_MAX_LINK_WIN)
> +	if (max_win < BCLINK_WIN_MIN)
> +		max_win = BCLINK_WIN_MIN;
> +	if (max_win > TIPC_MAX_LINK_WIN)
>  		return -EINVAL;
>  	tipc_bcast_lock(net);
> -	tipc_link_set_queue_limits(l, limit);
> +	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
>  	tipc_bcast_unlock(net);
>  	return 0;
>  }
> @@ -683,6 +683,7 @@ int tipc_bcast_init(struct net *net)
>  	if (!tipc_link_bc_create(net, 0, 0,
>  				 FB_MTU,
>  				 BCLINK_WIN_DEFAULT,
> +				 BCLINK_WIN_DEFAULT,
>  				 0,
>  				 &bb->inputq,
>  				 NULL,
> diff --git a/net/tipc/bearer.c b/net/tipc/bearer.c
> index d7ec26b..34ca7b7 100644
> --- a/net/tipc/bearer.c
> +++ b/net/tipc/bearer.c
> @@ -311,7 +311,8 @@ static int tipc_enable_bearer(struct net *net, const char *name,
> 
>  	b->identity = bearer_id;
>  	b->tolerance = m->tolerance;
> -	b->window = m->window;
> +	b->min_win = m->min_win;
> +	b->max_win = m->max_win;
>  	b->domain = disc_domain;
>  	b->net_plane = bearer_id + 'A';
>  	b->priority = prio;
> @@ -796,7 +797,7 @@ static int __tipc_nl_add_bearer(struct tipc_nl_msg *msg,
>  		goto prop_msg_full;
>  	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, bearer->tolerance))
>  		goto prop_msg_full;
> -	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->window))
> +	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bearer->max_win))
>  		goto prop_msg_full;
>  	if (bearer->media->type_id == TIPC_MEDIA_TYPE_UDP)
>  		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, bearer->mtu))
> @@ -1088,7 +1089,7 @@ int __tipc_nl_bearer_set(struct sk_buff *skb, struct genl_info *info)
>  		if (props[TIPC_NLA_PROP_PRIO])
>  			b->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
>  		if (props[TIPC_NLA_PROP_WIN])
> -			b->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> +			b->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
>  		if (props[TIPC_NLA_PROP_MTU]) {
>  			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
>  				return -EINVAL;
> @@ -1142,7 +1143,7 @@ static int __tipc_nl_add_media(struct tipc_nl_msg *msg,
>  		goto prop_msg_full;
>  	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_TOL, media->tolerance))
>  		goto prop_msg_full;
> -	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->window))
> +	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, media->max_win))
>  		goto prop_msg_full;
>  	if (media->type_id == TIPC_MEDIA_TYPE_UDP)
>  		if (nla_put_u32(msg->skb, TIPC_NLA_PROP_MTU, media->mtu))
> @@ -1275,7 +1276,7 @@ int __tipc_nl_media_set(struct sk_buff *skb, struct genl_info *info)
>  		if (props[TIPC_NLA_PROP_PRIO])
>  			m->priority = nla_get_u32(props[TIPC_NLA_PROP_PRIO]);
>  		if (props[TIPC_NLA_PROP_WIN])
> -			m->window = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> +			m->max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
>  		if (props[TIPC_NLA_PROP_MTU]) {
>  			if (m->type_id != TIPC_MEDIA_TYPE_UDP)
>  				return -EINVAL;
> diff --git a/net/tipc/bearer.h b/net/tipc/bearer.h
> index d0c79cc..bc00231 100644
> --- a/net/tipc/bearer.h
> +++ b/net/tipc/bearer.h
> @@ -119,7 +119,8 @@ struct tipc_media {
>  			char *raw);
>  	u32 priority;
>  	u32 tolerance;
> -	u32 window;
> +	u32 min_win;
> +	u32 max_win;
>  	u32 mtu;
>  	u32 type_id;
>  	u32 hwaddr_len;
> @@ -158,7 +159,8 @@ struct tipc_bearer {
>  	struct packet_type pt;
>  	struct rcu_head rcu;
>  	u32 priority;
> -	u32 window;
> +	u32 min_win;
> +	u32 max_win;
>  	u32 tolerance;
>  	u32 domain;
>  	u32 identity;
> diff --git a/net/tipc/eth_media.c b/net/tipc/eth_media.c
> index f69a2fd..38cdcab 100644
> --- a/net/tipc/eth_media.c
> +++ b/net/tipc/eth_media.c
> @@ -37,6 +37,9 @@
>  #include "core.h"
>  #include "bearer.h"
> 
> +#define TIPC_MIN_ETH_LINK_WIN 50
> +#define TIPC_MAX_ETH_LINK_WIN 500
> +
>  /* Convert Ethernet address (media address format) to string */
>  static int tipc_eth_addr2str(struct tipc_media_addr *addr,
>  			     char *strbuf, int bufsz)
> @@ -92,7 +95,8 @@ struct tipc_media eth_media_info = {
>  	.raw2addr	= tipc_eth_raw2addr,
>  	.priority	= TIPC_DEF_LINK_PRI,
>  	.tolerance	= TIPC_DEF_LINK_TOL,
> -	.window		= TIPC_DEF_LINK_WIN,
> +	.min_win	= TIPC_MIN_ETH_LINK_WIN,
> +	.max_win	= TIPC_MAX_ETH_LINK_WIN,
>  	.type_id	= TIPC_MEDIA_TYPE_ETH,
>  	.hwaddr_len	= ETH_ALEN,
>  	.name		= "eth"
> diff --git a/net/tipc/ib_media.c b/net/tipc/ib_media.c
> index e8c1671..7aa9ff8 100644
> --- a/net/tipc/ib_media.c
> +++ b/net/tipc/ib_media.c
> @@ -42,6 +42,8 @@
>  #include "core.h"
>  #include "bearer.h"
> 
> +#define TIPC_MAX_IB_LINK_WIN 500
> +
>  /* convert InfiniBand address (media address format) media address to string */
>  static int tipc_ib_addr2str(struct tipc_media_addr *a, char *str_buf,
>  			    int str_size)
> @@ -94,7 +96,8 @@ struct tipc_media ib_media_info = {
>  	.raw2addr	= tipc_ib_raw2addr,
>  	.priority	= TIPC_DEF_LINK_PRI,
>  	.tolerance	= TIPC_DEF_LINK_TOL,
> -	.window		= TIPC_DEF_LINK_WIN,
> +	.min_win	= TIPC_DEF_LINK_WIN,
> +	.max_win	= TIPC_MAX_IB_LINK_WIN,
>  	.type_id	= TIPC_MEDIA_TYPE_IB,
>  	.hwaddr_len	= INFINIBAND_ALEN,
>  	.name		= "ib"
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index fb72031..a88950b 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -164,7 +164,6 @@ struct tipc_link {
>  		struct sk_buff *target_bskb;
>  	} backlog[5];
>  	u16 snd_nxt;
> -	u16 window;
> 
>  	/* Reception */
>  	u16 rcv_nxt;
> @@ -175,6 +174,10 @@ struct tipc_link {
> 
>  	/* Congestion handling */
>  	struct sk_buff_head wakeupq;
> +	u16 window;
> +	u16 min_win;
> +	u16 max_win;
> +	u16 cong_acks;
> 
>  	/* Fragmentation/reassembly */
>  	struct sk_buff *reasm_buf;
> @@ -308,9 +311,14 @@ u32 tipc_link_id(struct tipc_link *l)
>  	return l->peer_bearer_id << 16 | l->bearer_id;
>  }
> 
> -int tipc_link_window(struct tipc_link *l)
> +int tipc_link_min_win(struct tipc_link *l)
> +{
> +	return l->min_win;
> +}
> +
> +int tipc_link_max_win(struct tipc_link *l)
>  {
> -	return l->window;
> +	return l->max_win;
>  }
> 
>  int tipc_link_prio(struct tipc_link *l)
> @@ -436,7 +444,8 @@ u32 tipc_link_state(struct tipc_link *l)
>   * @net_plane: network plane (A,B,c..) this link belongs to
>   * @mtu: mtu to be advertised by link
>   * @priority: priority to be used by link
> - * @window: send window to be used by link
> + * @min_win: minimal send window to be used by link
> + * @max_win: maximal send window to be used by link
>   * @session: session to be used by link
>   * @ownnode: identity of own node
>   * @peer: node id of peer node
> @@ -451,7 +460,7 @@ u32 tipc_link_state(struct tipc_link *l)
>   */
>  bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>  		      int tolerance, char net_plane, u32 mtu, int priority,
> -		      int window, u32 session, u32 self,
> +		      u32 min_win, u32 max_win, u32 session, u32 self,
>  		      u32 peer, u8 *peer_id, u16 peer_caps,
>  		      struct tipc_link *bc_sndlink,
>  		      struct tipc_link *bc_rcvlink,
> @@ -495,7 +504,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>  	l->advertised_mtu = mtu;
>  	l->mtu = mtu;
>  	l->priority = priority;
> -	tipc_link_set_queue_limits(l, window);
> +	tipc_link_set_queue_limits(l, min_win, max_win);
>  	l->ackers = 1;
>  	l->bc_sndlink = bc_sndlink;
>  	l->bc_rcvlink = bc_rcvlink;
> @@ -523,7 +532,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>   * Returns true if link was created, otherwise false
>   */
>  bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
> -			 int mtu, int window, u16 peer_caps,
> +			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
>  			 struct sk_buff_head *inputq,
>  			 struct sk_buff_head *namedq,
>  			 struct tipc_link *bc_sndlink,
> @@ -531,9 +540,9 @@ bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
>  {
>  	struct tipc_link *l;
> 
> -	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, window,
> -			      0, ownnode, peer, NULL, peer_caps, bc_sndlink,
> -			      NULL, inputq, namedq, link))
> +	if (!tipc_link_create(net, "", MAX_BEARERS, 0, 'Z', mtu, 0, min_win,
> +			      max_win, 0, ownnode, peer, NULL, peer_caps,
> +			      bc_sndlink, NULL, inputq, namedq, link))
>  		return false;
> 
>  	l = *link;
> @@ -959,7 +968,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>  	int pkt_cnt = skb_queue_len(list);
>  	int imp = msg_importance(hdr);
>  	unsigned int mss = tipc_link_mss(l);
> -	unsigned int maxwin = l->window;
> +	unsigned int cwin = l->window;
>  	unsigned int mtu = l->mtu;
>  	bool new_bundle;
>  	int rc = 0;
> @@ -988,7 +997,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
> 
>  	/* Prepare each packet for sending, and add to relevant queue: */
>  	while ((skb = __skb_dequeue(list))) {
> -		if (likely(skb_queue_len(transmq) < maxwin)) {
> +		if (likely(skb_queue_len(transmq) < cwin)) {
>  			hdr = buf_msg(skb);
>  			msg_set_seqno(hdr, seqno);
>  			msg_set_ack(hdr, ack);
> @@ -1038,6 +1047,8 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>  static void tipc_link_advance_backlog(struct tipc_link *l,
>  				      struct sk_buff_head *xmitq)
>  {
> +	struct sk_buff_head *txq = &l->transmq;
> +	u16 qlen, add, cwin = l->window;
>  	struct sk_buff *skb, *_skb;
>  	struct tipc_msg *hdr;
>  	u16 seqno = l->snd_nxt;
> @@ -1045,7 +1056,13 @@ static void tipc_link_advance_backlog(struct tipc_link *l,
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
>  	u32 imp;
> 
> -	while (skb_queue_len(&l->transmq) < l->window) {
> +	qlen = skb_queue_len(txq);
> +	if (qlen >= cwin && (l->snd_nxt - buf_seqno(skb_peek(txq)) == qlen)) {
> +		add = l->cong_acks++ % 32 ? 0 : 1;
> +		cwin = min_t(u16, cwin + add, l->max_win);
> +		l->window = cwin;
> +	}
> +	while (skb_queue_len(txq) < cwin) {
>  		skb = skb_peek(&l->backlogq);
>  		if (!skb)
>  			break;
> @@ -1140,6 +1157,7 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  {
>  	struct sk_buff *_skb, *skb = skb_peek(&l->transmq);
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
> +	bool retransmitted = false;
>  	u16 ack = l->rcv_nxt - 1;
>  	struct tipc_msg *hdr;
>  	int rc = 0;
> @@ -1173,11 +1191,13 @@ static int tipc_link_bc_retrans(struct tipc_link *l, struct tipc_link *r,
>  		_skb->priority = TC_PRIO_CONTROL;
>  		__skb_queue_tail(xmitq, _skb);
>  		l->stats.retransmitted++;
> -
> +		retransmitted = true;
>  		/* Increase actual retrans counter & mark first time */
>  		if (!TIPC_SKB_CB(skb)->retr_cnt++)
>  			TIPC_SKB_CB(skb)->retr_stamp = jiffies;
>  	}
> +	if (retransmitted)
> +		l->window = l->min_win + (l->window - l->min_win) / 2;
>  	return 0;
>  }
> 
> @@ -1417,6 +1437,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  	struct sk_buff *skb, *_skb, *tmp;
>  	struct tipc_msg *hdr;
>  	u16 bc_ack = l->bc_rcvlink->rcv_nxt - 1;
> +	bool retransmitted = false;
>  	u16 ack = l->rcv_nxt - 1;
>  	bool passed = false;
>  	u16 seqno, n = 0;
> @@ -1449,7 +1470,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  			_skb->priority = TC_PRIO_CONTROL;
>  			__skb_queue_tail(xmitq, _skb);
>  			l->stats.retransmitted++;
> -
> +			retransmitted = true;
>  			/* Increase actual retrans counter & mark first time */
>  			if (!TIPC_SKB_CB(skb)->retr_cnt++)
>  				TIPC_SKB_CB(skb)->retr_stamp = jiffies;
> @@ -1463,7 +1484,8 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  			goto next_gap_ack;
>  		}
>  	}
> -
> +	if (retransmitted)
> +		l->window = l->min_win + (l->window - l->min_win) / 2;
>  	return 0;
>  }
> 
> @@ -2305,15 +2327,17 @@ int tipc_link_bc_nack_rcv(struct tipc_link *l, struct sk_buff *skb,
>  	return 0;
>  }
> 
> -void tipc_link_set_queue_limits(struct tipc_link *l, u32 win)
> +void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32 max_win)
>  {
>  	int max_bulk = TIPC_MAX_PUBL / (l->mtu / ITEM_SIZE);
> 
> -	l->window = win;
> -	l->backlog[TIPC_LOW_IMPORTANCE].limit      = max_t(u16, 50, win);
> -	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = max_t(u16, 100, win * 2);
> -	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = max_t(u16, 150, win * 3);
> -	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = max_t(u16, 200, win * 4);
> +	l->window = min_win;
> +	l->min_win = min_win;
> +	l->max_win = max_win;
> +	l->backlog[TIPC_LOW_IMPORTANCE].limit      = min_win * 2;
> +	l->backlog[TIPC_MEDIUM_IMPORTANCE].limit   = min_win * 4;
> +	l->backlog[TIPC_HIGH_IMPORTANCE].limit     = min_win * 6;
> +	l->backlog[TIPC_CRITICAL_IMPORTANCE].limit = min_win * 8;
>  	l->backlog[TIPC_SYSTEM_IMPORTANCE].limit   = max_bulk;
>  }
> 
> @@ -2366,10 +2390,10 @@ int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[])
>  	}
> 
>  	if (props[TIPC_NLA_PROP_WIN]) {
> -		u32 win;
> +		u32 max_win;
> 
> -		win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> -		if ((win < TIPC_MIN_LINK_WIN) || (win > TIPC_MAX_LINK_WIN))
> +		max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> +		if (max_win < TIPC_MIN_LINK_WIN || max_win > TIPC_MAX_LINK_WIN)
>  			return -EINVAL;
>  	}
> 
> @@ -2605,7 +2629,7 @@ int tipc_nl_add_bc_link(struct net *net, struct tipc_nl_msg *msg)
>  	prop = nla_nest_start_noflag(msg->skb, TIPC_NLA_LINK_PROP);
>  	if (!prop)
>  		goto attr_msg_full;
> -	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->window))
> +	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_WIN, bcl->max_win))
>  		goto prop_msg_full;
>  	if (nla_put_u32(msg->skb, TIPC_NLA_PROP_BROADCAST, bc_mode))
>  		goto prop_msg_full;
> diff --git a/net/tipc/link.h b/net/tipc/link.h
> index c09e9d4..d3c1c3f 100644
> --- a/net/tipc/link.h
> +++ b/net/tipc/link.h
> @@ -73,7 +73,7 @@ enum {
> 
>  bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>  		      int tolerance, char net_plane, u32 mtu, int priority,
> -		      int window, u32 session, u32 ownnode,
> +		      u32 min_win, u32 max_win, u32 session, u32 ownnode,
>  		      u32 peer, u8 *peer_id, u16 peer_caps,
>  		      struct tipc_link *bc_sndlink,
>  		      struct tipc_link *bc_rcvlink,
> @@ -81,7 +81,7 @@ bool tipc_link_create(struct net *net, char *if_name, int bearer_id,
>  		      struct sk_buff_head *namedq,
>  		      struct tipc_link **link);
>  bool tipc_link_bc_create(struct net *net, u32 ownnode, u32 peer,
> -			 int mtu, int window, u16 peer_caps,
> +			 int mtu, u32 min_win, u32 max_win, u16 peer_caps,
>  			 struct sk_buff_head *inputq,
>  			 struct sk_buff_head *namedq,
>  			 struct tipc_link *bc_sndlink,
> @@ -115,7 +115,8 @@ char *tipc_link_name_ext(struct tipc_link *l, char *buf);
>  u32 tipc_link_state(struct tipc_link *l);
>  char tipc_link_plane(struct tipc_link *l);
>  int tipc_link_prio(struct tipc_link *l);
> -int tipc_link_window(struct tipc_link *l);
> +int tipc_link_min_win(struct tipc_link *l);
> +int tipc_link_max_win(struct tipc_link *l);
>  void tipc_link_update_caps(struct tipc_link *l, u16 capabilities);
>  bool tipc_link_validate_msg(struct tipc_link *l, struct tipc_msg *hdr);
>  unsigned long tipc_link_tolerance(struct tipc_link *l);
> @@ -124,7 +125,7 @@ void tipc_link_set_tolerance(struct tipc_link *l, u32 tol,
>  void tipc_link_set_prio(struct tipc_link *l, u32 prio,
>  			struct sk_buff_head *xmitq);
>  void tipc_link_set_abort_limit(struct tipc_link *l, u32 limit);
> -void tipc_link_set_queue_limits(struct tipc_link *l, u32 window);
> +void tipc_link_set_queue_limits(struct tipc_link *l, u32 min_win, u32 max_win);
>  int __tipc_nl_add_link(struct net *net, struct tipc_nl_msg *msg,
>  		       struct tipc_link *link, int nlflags);
>  int tipc_nl_parse_link_prop(struct nlattr *prop, struct nlattr *props[]);
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index aaf5956..970c780 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -1134,7 +1134,8 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>  		snd_l = tipc_bc_sndlink(net);
>  		if (!tipc_link_bc_create(net, tipc_own_addr(net),
>  					 addr, U16_MAX,
> -					 tipc_link_window(snd_l),
> +					 tipc_link_min_win(snd_l),
> +					 tipc_link_max_win(snd_l),
>  					 n->capabilities,
>  					 &n->bc_entry.inputq1,
>  					 &n->bc_entry.namedq, snd_l,
> @@ -1228,7 +1229,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>  		get_random_bytes(&session, sizeof(u16));
>  		if (!tipc_link_create(net, if_name, b->identity, b->tolerance,
>  				      b->net_plane, b->mtu, b->priority,
> -				      b->window, session,
> +				      b->min_win, b->max_win, session,
>  				      tipc_own_addr(net), addr, peer_id,
>  				      n->capabilities,
>  				      tipc_bc_sndlink(n->net), n->bc_entry.link,
> @@ -2374,10 +2375,12 @@ int tipc_nl_node_set_link(struct sk_buff *skb, struct genl_info *info)
>  			tipc_link_set_prio(link, prio, &xmitq);
>  		}
>  		if (props[TIPC_NLA_PROP_WIN]) {
> -			u32 win;
> +			u32 max_win;
> 
> -			win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> -			tipc_link_set_queue_limits(link, win);
> +			max_win = nla_get_u32(props[TIPC_NLA_PROP_WIN]);
> +			tipc_link_set_queue_limits(link,
> +						   tipc_link_min_win(link),
> +						   max_win);
>  		}
>  	}
> 
> diff --git a/net/tipc/udp_media.c b/net/tipc/udp_media.c
> index 86aaa4d..7d9dcbb 100644
> --- a/net/tipc/udp_media.c
> +++ b/net/tipc/udp_media.c
> @@ -825,7 +825,8 @@ struct tipc_media udp_media_info = {
>  	.msg2addr	= tipc_udp_msg2addr,
>  	.priority	= TIPC_DEF_LINK_PRI,
>  	.tolerance	= TIPC_DEF_LINK_TOL,
> -	.window		= TIPC_DEF_LINK_WIN,
> +	.min_win	= TIPC_DEF_LINK_WIN,
> +	.max_win	= TIPC_DEF_LINK_WIN,
>  	.mtu		= TIPC_DEF_LINK_UDP_MTU,
>  	.type_id	= TIPC_MEDIA_TYPE_UDP,
>  	.hwaddr_len	= 0,
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
