Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FE91CD026
	for <lists+tipc-discussion@lfdr.de>; Mon, 11 May 2020 05:07:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jXymT-0000za-9H; Mon, 11 May 2020 03:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jXymR-0000zN-J6
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 03:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ml3Th6kCmn++KsPWBTjwBSMobfAdX2mGH0SAdrvqdPQ=; b=cKB18+ybjLHbgOsG55dHv8N9oq
 L3d24mZ1Y3Jg4S09dah/2CBbv67F3xuDJybaEzTjWKRAM+xqnMpey8TieiYwHHgI59S+v1VvDUgyj
 FgxrOClIni9/G2y/5nT2qC/DCJevQS1gDd7VjolEz+i2rQmOmiBBmE6CMmb36FRAwfkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ml3Th6kCmn++KsPWBTjwBSMobfAdX2mGH0SAdrvqdPQ=; b=OpEPprJwL2yjJ2LZhmIo+hxca4
 XYOLBd8Lou7bNf1OGu46aabx0oHpHJLDtM0FlTZ0LrFwXIr1iLGluX1ut6Ww9KfFT2oZwihBj5SqV
 /rDy+kid6zyYS1Ll76X0CPwwtOUZVGDJzkrkVtOBCw5V9CDK/5HavFY/AhuccPyZrr+8=;
Received: from mail-am6eur05on2127.outbound.protection.outlook.com
 ([40.107.22.127] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jXymO-007yFG-MB
 for tipc-discussion@lists.sourceforge.net; Mon, 11 May 2020 03:06:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljXd4I3vHfSo2pmK2rBMvGzPkegkJOqDIlyS598nOn9YRwLmEG8wqYu5+Txt81nEahAPBKZvYVTJz5c0RUArB9ih6q8UlBmOh3ZKhVbtFMF0vp5zr7oUJPYU1tp65vksRj89uZOuEG+If2bFENuFl0snz3zVZ8ySwUQpTRSb8ob9WR36NwC5aL6hGyUyu6VuXnf4PdSC415fQS3KRhfA8s9r2ql1Gz4BnKddSg8VSqi3ipt76PEt58iGoCc82o7d8G/nkGUysU5VR1Z2rxVWRP0M6KtKU9PEcvOCwnTTqXQDJdPZc571NBCYblXfZQrVg0HxpiWsWmxWNuqX+QDicQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ml3Th6kCmn++KsPWBTjwBSMobfAdX2mGH0SAdrvqdPQ=;
 b=DIvsj4hLCZwOg9yvbCoeiCTjsnqfkzAGKqkcxUVOqVqnOIFoKGGONjovu1R6/mKu0p5ddyA/YF6OfwUz6MrUe1y5VzjrP/1g58kE8THbhF55c7Dr14JfBEzWonaZqs8VshTiDE5N6M+WVMnFhnmZioGDJoNHTlp3uEK+qlEP2iUzb4Kq8tMd83GFT1j/Ah7UYa2QbOrTlyjb4+9ciotzUO7waMWJPXJxhezDC0iNvbuPBMPcPH/tSWFOzN3Mz8tNU8FgGtQ7gjwugJshs503qGHqkWYu19hEo7eD/qs/sYK1/mxG1vDTLvTFebviWz1QWCvIR6qJIlWLx9IhlId6Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ml3Th6kCmn++KsPWBTjwBSMobfAdX2mGH0SAdrvqdPQ=;
 b=HroCN3bbflKohVmnlnTdVP+8ZeF7T405AoLeIE43B2MAgPF6pOF1zo3R6LzNMrenFM2KARQyXZmtjmpAqIb8mUtivvFjUtkHKatzXdjRJk9WBaGVdxY8OmGUq+2rqTRzXOrae82lCY0udYhlPFtVQpb1Dj3NZTptoPzGezpBzAo=
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com (2603:10a6:209:5::28)
 by AM6PR0502MB4008.eurprd05.prod.outlook.com (2603:10a6:209:1e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.35; Mon, 11 May
 2020 03:06:47 +0000
Received: from AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c]) by AM6PR0502MB3925.eurprd05.prod.outlook.com
 ([fe80::5941:e5bd:759c:dd8c%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 03:06:47 +0000
From: Tuong Tong Lien <tuong.t.lien@dektech.com.au>
To: "Xue, Ying" <Ying.Xue@windriver.com>, "jmaloy@redhat.com"
 <jmaloy@redhat.com>, "maloy@donjonn.com" <maloy@donjonn.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [RFC PATCH 1/2] tipc: fix large latency in smart Nagle streaming
Thread-Index: AQHWIgcnSfO836lUVkS7TPOffCTLr6ieShOAgAPzZDA=
Date: Mon, 11 May 2020 03:06:47 +0000
Message-ID: <AM6PR0502MB3925EEF5E2200531FB6CCFE8E2A10@AM6PR0502MB3925.eurprd05.prod.outlook.com>
References: <20200504112826.11186-1-tuong.t.lien@dektech.com.au>
 <20200504112826.11186-2-tuong.t.lien@dektech.com.au>
 <BY5PR11MB3894E4C56D34E5F76F884CC184A20@BY5PR11MB3894.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB3894E4C56D34E5F76F884CC184A20@BY5PR11MB3894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc3be615-484a-46be-9204-08d7f55857ac
x-ms-traffictypediagnostic: AM6PR0502MB4008:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0502MB4008B216DAA89AC9ADF27CC2E2A10@AM6PR0502MB4008.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dj6oj35jIu7HKDENH0gmPG5wDvo3e5iRedSTudGd+6N6NNVrSLwutBA70FJcuWuXZrStsynRqlFKxZecvraAJeHyYytRZN68YaxhDpSY51/rei2ZxR5QpV1kF35chXVWuAZfZ3UgKR4nVMxlOt2+FM3wlEKFpXbdwY0LZQglQH5NFyM0t5VEcVf3loiC0clkCN36Iw1/+KgqK1fU/VIRebqe2rs3KkIDjaySwoR07sTFBvarpkTIMHSpKdisDeRqkmkbeevVJz3dVfscijA5Zo/by93IVWWZBNYLD8ilqU1TGOvr4gPcbUtZ4iPwKH2BHjf1cpBwVEfeyWprKA77gvevTdwUrSt8MpzCiah8O3Rnfchxw7QjkRrnZjo9sVA8jwQvnrj6a0B3Xxv5KDhK/sLwEk10q+tW1emqG3OU+h/f5mwXEC9BQTkIkkpd7V4PjjwGGE2h/vSVEMLfNvU3nTiRoPMP+djlosok8iDqttsajK1E7kwiv7hXslzTPyO0YCBRCg963plMXczZgZOLxQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0502MB3925.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(136003)(376002)(346002)(396003)(366004)(33430700001)(64756008)(66946007)(76116006)(5660300002)(66446008)(66556008)(66476007)(52536014)(33440700001)(33656002)(4744005)(4326008)(53546011)(6506007)(186003)(26005)(7696005)(71200400001)(110136005)(55016002)(316002)(8936002)(86362001)(478600001)(8676002)(9686003)(2906002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ITEzHLAXayfDSuW3jiyuQcbfw27l3BA69VWhwVpoQJKIKeIe4YGL4BqX/MtjhsmRoz8F/RApnWg0YIuJdq4yW+D39DxXXbL5b8CoU0SNrL0Vq5xJh9Bx1p36ade+ZnsyRfN0NWSxnMMI6HcbyP7Pa3X1gM8RlUSb8v+vu3t66vgXiRtn1vyQrvI7S5sVpBlDqbDUapaSnTdjdY2BwT8Gm5JI0/smcVRx65wKm5lrhEiaOdMiC60p295sF9VOFsyleA9BH5PpIL3pc1CsHjxTDqCVBtPzHYZ3rMPhPHANMv6RFvnGwfZDaboenopdbGZcPATUO99BjHhuZbjw9u3ewf/6dnofRa76T/QxZnniXchew4ic7Pqf0L0cMt3Mvwc+1uqWXHiiJB0+CiBmdtg9jBakTfTD15Ot1n8YqY+Ay8q6qaZP2UQR7rxsHVdk8mu56izsliSdHCH9eMNFsw96bd7lVX2eQsDPNRKLGD1ZosU=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3be615-484a-46be-9204-08d7f55857ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 03:06:47.1559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cd7N7GPPj/TM8Q1ehv3rKKQ74PeT73+uCJcaPW7Y0+/0MtrWttGLnOJtVTkXSmdJ8mqmRWCZKAxf1czzZDzm9RUIOHILwBrING95TiT2vyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4008
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jXymO-007yFG-MB
Subject: Re: [tipc-discussion] [RFC PATCH 1/2] tipc: fix large latency in
 smart Nagle streaming
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
Cc: tipc-dek <tipc-dek@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Ying,

You mean for SOCK_SEQPACKET? But we don't apply smart Nagle to that sock type (only SOCK_STREAM), nor is there such code in tipc_recvmsg().

BR/Tuong

-----Original Message-----
From: Xue, Ying <Ying.Xue@windriver.com> 
Sent: Friday, May 8, 2020 9:44 PM
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; jmaloy@redhat.com; maloy@donjonn.com; tipc-discussion@lists.sourceforge.net
Cc: tipc-dek <tipc-dek@dektech.com.au>
Subject: RE: [RFC PATCH 1/2] tipc: fix large latency in smart Nagle streaming

@@ -2011,7 +2021,7 @@ static int tipc_recvstream(struct socket *sock, struct msghdr *m,
 
 		/* Send connection flow control advertisement when applicable */
 		tsk->rcv_unacked += tsk_inc(tsk, hlen + dlen);
-		if (ack || tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
+		if (tsk->rcv_unacked >= tsk->rcv_win / TIPC_ACK_RATE)
 			tipc_sk_send_ack(tsk);
 
Beside tipc_recvstream(), we also need to make the same change in tipc_recvmsg().



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
