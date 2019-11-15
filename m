Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 04699FE1C3
	for <lists+tipc-discussion@lfdr.de>; Fri, 15 Nov 2019 16:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YwSp0DH1VcS21CHK6P+MsJ/AfkU/MKzewmtzwmR//v0=; b=FCKcvySmd0ftfhbmM3klhr/PC
	j8p5LtSuXR+WQ0ausXh8hJa9LMaQPzKcOKS0l0GsKBKROv2muwGDoyPQyV0kwbb/it0y7QVj4vzjk
	vy+9Sev7U5uX2LJqy67CBHEIuP2xDy5Y/UZa0EOWxtaYgLtR01VysQUNi8KUc63Ly48HU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iVdpS-0004Rm-M0; Fri, 15 Nov 2019 15:48:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iVdpK-0004RL-35
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 15:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5yRvVtwM4iwIa84PlJopxDIdZYBNivyDtStWmmANYQc=; b=QK49ghOxYEq2WdSf/wrzD42n4j
 mnsSgljFGCjAs0Y6SMvhmNq1RhYNQPK3NLNPBnCqzsn+MPSZ63Uz142be/QBoVV1Fy/Qw76WqoQVp
 FIDiPVbhkdNAEg7cnTCJAtdLcAERN7ueaqNEWv7TCAMKrDRfqB6FnUeaahimC22bTS+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5yRvVtwM4iwIa84PlJopxDIdZYBNivyDtStWmmANYQc=; b=k9uH33kQRnmPra1ZH8s4zPCatn
 N/xeWzsxeeQrZrApVnJGIKx7yWVK3Y47c3jkGftc9FcgO87sHTpsDLX6cbXB6b2dpZkamem2JiDWU
 bhHfMT/RoXn9S5/lNty/OZKC3FmT4mrtfmELWQr71RC8TmBC+RXOmISETqKA46fWdI0E=;
Received: from mail-eopbgr720062.outbound.protection.outlook.com
 ([40.107.72.62] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVdpE-0012Ee-Oo
 for tipc-discussion@lists.sourceforge.net; Fri, 15 Nov 2019 15:48:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ffdxp3Ppl/7fmZH/M526SmhD5XOBnaPO+4BII0jBKYIzeqtaEtVl9rPOvY4xyPxeVpibHSJV+OV6bmO8Bls0hF2xSe+cykBJW9GgI4CubLkh6Q+Y0h3hyHsfSzfoTcekDA7BeunF1V5kIZs8n3oBIr1gb2eydvSYNc0emRruC5Q391BUouNYJEF43LytHVk2gI8Zu4Sh2kW+IMONRQAlB9qo2OnFwamQ6PVosVCtc7ep1cIF6J200epfHjdP7aRsutoMv2cLpFqg8j3n+6ELOWoZ2ZhTKWainaj00GxAmS2iNIa95P9kje9YxZ0xiJxgLQ7SfYp9d0rJxzlqdJXsHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yRvVtwM4iwIa84PlJopxDIdZYBNivyDtStWmmANYQc=;
 b=KWyqBvTWVdM1dCXHQ0PK9hcBsVN76bhcOZKG8WqAIia/7/uKjpIoChtM2G3i3YdfSSqZsoYmhEpOXsinx4JAp/eMVEPlZJzFCFO3iv8iIKfoeLy4TgklMRUNK6gY3gZWWy4HMTE/GMqp063wpqzqQ/wswqnW1sbOYITDGqXt36wMCY3TX+M3l44+97qVgy2u5xk1RokaSvEHUst5VIUtpGXmfqCvtLR6DfVOI14cgJbfmRD8+oT/wxxm1hXXO6TqcZ7YwwGVH+A5f8vyZO00MzaZ5iXfkesm6RV/5SmUlt2K9UXYxl+PBeDOrveQlcnRBrQGrOL6jCLjTY0pbyLpBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yRvVtwM4iwIa84PlJopxDIdZYBNivyDtStWmmANYQc=;
 b=JPdBkWccN4UZSKGxI9gPv0lQtHdDdnGSOMoXmlvh3mXjP1JecHMvCouJT03HW49ppqJgQ1fXrN8P9hA6mip6hgS9qxALhLfiYEAQ2Se10Rm9HxYeH4Ki5MawplncDHaGGFke1KMZl2xAo6KKil+DiEpe1IC1E3qXHt28gIaWwXY=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3544.namprd15.prod.outlook.com (52.132.228.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Fri, 15 Nov 2019 15:33:00 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.029; Fri, 15 Nov 2019
 15:33:00 +0000
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>, "ying.xue@windriver.com" <ying.xue@windriver.com>
Thread-Topic: [tipc-discussion] [net v1 1/1] tipc: fix unreset l->rcv_unacked
 after message retransmission
Thread-Index: AQHVm5RB259hTAWCEE2Q83wXcxXI36eMXLTg
Date: Fri, 15 Nov 2019 15:32:59 +0000
Message-ID: <CH2PR15MB35757B10CAE0AF3979CDA4F19A700@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191115090808.2021-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20191115090808.2021-1-tung.q.nguyen@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 02459ec9-9304-4f9d-1ba9-08d769e118d7
x-ms-traffictypediagnostic: CH2PR15MB3544:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB3544DC7817973D3F94E6F6BD9A700@CH2PR15MB3544.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:323;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(13464003)(199004)(189003)(11346002)(81166006)(486006)(6246003)(2501003)(25786009)(5660300002)(14454004)(6116002)(478600001)(6436002)(52536014)(64756008)(229853002)(9686003)(3846002)(66476007)(66556008)(66946007)(66446008)(55016002)(76116006)(256004)(71200400001)(71190400001)(102836004)(8936002)(2201001)(53546011)(15650500001)(86362001)(81156014)(66066001)(99286004)(186003)(7696005)(446003)(74316002)(76176011)(44832011)(476003)(33656002)(26005)(305945005)(7736002)(2906002)(6506007)(316002)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3544;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pt4YS6qc8siQ1tabRbLKXxKe7HeWpY0H4lVzkW8KUrhmI5fKMDyCO9ncWdUHMN432ZIy6f4n6Pz6V77M2LdtlBXRwz6hUCIkexf8L2O8m1pbSbmfVcHCQxbKs2f2ONwpkTlSPSatpgDwCM42BNxVSt6zwcmvWiYj8H72kSdy4locsdOWe92+QumTBLswlhSSYejRNTwcCstHj0zZrp0dsO8qB4fDqE4f0LbSBKtUjgrgarbuu7+CzT0WNJX1g5/s6ga+8oPNhIhJQetyuWxuiSh3hv55vVDjN68Nvx4fv8LrrLoDiqWgZagZVykBdWrErt+8wBqC/7tFXFcdlOHShyoZiKgFXvVPcrcHIO8wYVvQ1FKPboFuacQ/+nyCNmyCPtMfsLrr6cRGXMlUgPxOgwN5lnEglMojeq9MxOBv65bde1uaahOG0ao2IZ8lZbry
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02459ec9-9304-4f9d-1ba9-08d769e118d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 15:32:59.9484 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BDHTndLPeVxUhPBrw9uF4ixU7nRlRWM4ENWbP8f31rA4npz7Rc3ByD8nLyBhzbPiKhwdyOrcgeOw9SazQgO9LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3544
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: donjonn.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.72.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVdpE-0012Ee-Oo
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix unreset l->rcv_unacked
 after message retransmission
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked.
///jon

> -----Original Message-----
> From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> Sent: 15-Nov-19 04:08
> To: tipc-discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>; maloy@donjonn.com;
> ying.xue@windriver.com
> Subject: [tipc-discussion] [net v1 1/1] tipc: fix unreset l->rcv_unacked after message retransmission
> 
> When lost messages are retransmitted, they also carry ACK.
> So, l->rcv_unacked needs to be reset.
> 
> Fixes: 9195948fbf34 ("tipc: improve TIPC throughput by Gap ACK blocks")
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/link.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index fb72031..7660e5a 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1448,6 +1448,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, u16 acked, u16 gap,
>  			msg_set_bcast_ack(hdr, bc_ack);
>  			_skb->priority = TC_PRIO_CONTROL;
>  			__skb_queue_tail(xmitq, _skb);
> +			l->rcv_unacked = 0;
>  			l->stats.retransmitted++;
> 
>  			/* Increase actual retrans counter & mark first time */
> --
> 2.1.4


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
