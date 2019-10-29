Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC651E86C0
	for <lists+tipc-discussion@lfdr.de>; Tue, 29 Oct 2019 12:25:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vcu/GB+8mZwOtB2BSN4fxqIc0IltVmA26wQZIAdxGw4=; b=D1M3QFj+oVb91REO/5EGtLPFc
	aMAJz4INU/Wz/90YuZZM8bEq+iR4XiBu1U41YNq7PQA6wcd2u7iF5kTSZwz+HLopS1EbCU/QsY8JQ
	DrdF44OlG0l1tpBOx/5SQ0jxll4N16PA5YondS1boqhlqQFFpLBOVZ51blHukLyJtz4G8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iPPcg-0002Qs-7D; Tue, 29 Oct 2019 11:25:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iPPcf-0002Qa-50
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 11:25:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TMT2DEepWydpMEa1+9Qn3ujUt4pZOh7MEvitqMhGnYM=; b=cGgUCNw+Xrw8Zh8Pg7Kc2fva2j
 JeKzztyIprIg/WiJfehivkXoiknoFReMzRvPfQVADdv0fqXlrnPJpyEQpcB2PnaHRS+xL95nhaD6C
 joRJg8P1du2mUmlLRPGpQN/Hutz0DCZTE+hF5lb1kVJPN1fDKjQBCeWl1HzPxjdf982I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TMT2DEepWydpMEa1+9Qn3ujUt4pZOh7MEvitqMhGnYM=; b=b5d4rvXVQRnzUOjmmHFJZRRukq
 myJeyofEcipAtG+DTEIc58qBuB3iqx5UwWTT+oaH9rSUTNJ53mrZUdmHhN5dZ8cmirFqWCEB8hmz+
 PROKPM9Jy+1SlbV/ppyoLlY6NCvGzqWnwH2akHnzyDaEx3WZzSM4hawzOxskH6PzHXu0=;
Received: from mail-eopbgr680066.outbound.protection.outlook.com
 ([40.107.68.66] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iPPcV-008RMC-CG
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Oct 2019 11:25:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDbKUM70iVXVZM8CqtGh5PG51ly4SwSYlQSpPKwkf1wd00noMFE8Dpbup4oaF60PGGUeGB1TUOsubHBiBcUBEImjRkSjkJojXzemSl0h2lL4wZpm1pfXxRgzEdhGYcPiZMtjJaBEkcigU1Z1+012wMXCBQpHXRS89jNcae0g844IRP8M5bCFAiwhQ5FMNyx9WDrvQjT5ReZSCVqayeFEXewNPE9ofMR5jbrNASUp8dusc4SUie3vMXDa0JPzjeLhU8rsvqs0Xc/Mrny77BYVPTvOK1k/RMPWHDUW3SSvpqB/i/3SSL3Z056TvVn6QuEgQa2u2y9qUmSQfSyEHMfTpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMT2DEepWydpMEa1+9Qn3ujUt4pZOh7MEvitqMhGnYM=;
 b=acjeoFxtF3qXrWXsqvM2pYNGa3+aF6MVYolyrEJL/8TWuZZqG2QnCnQ/2nxVB/jzfT9msIPvNnEaDdOElrqBV8k9uwvhjfAAbM+B6L1DrctEjPMq1faZsC6qVbekUoiiv4wC9FNxB+VsvQHiqXaNpZygmIxje74dvCkC0NI5K9/SU0ZJffnZLoMTAZ8NQaX/e+DvsGFiF7gygHY/aQM4orkmpfi2Gl8lZe0wZsf/JRgNlm7oxtsfHlQSv0qUzjVLnpPmEMAeSLbN23+cPTvh7n8vHUrDV5F1U5ALtCCSV/Zut08jA2/fuglqHs+/xp5nCa05InuMs/kVfm1vl2viKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TMT2DEepWydpMEa1+9Qn3ujUt4pZOh7MEvitqMhGnYM=;
 b=dSc/4cw+W0zGLVl0HHdBhce9VhJtKxJyaLvaKKuvv/duBY/mGiY2NBvd25FTPvpr3JPONXtlZg+pDNkNNQC/DjGI6nPSpper9FHgwjmoNnmByfPrrX52YE0nxN07py7b0F8tpHp6jVgyJiJnelQHS6isMXzr6NMyl/XHqf0GOZQ=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3576.namprd15.prod.outlook.com (52.132.229.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:24:55 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2387.025; Tue, 29 Oct 2019
 11:24:55 +0000
To: Ying Xue <ying.xue@windriver.com>, Jon Maloy <maloy@donjonn.com>
Thread-Topic: [net-next v3 1/1] tipc: add smart nagle feature
Thread-Index: AQHVjbZ70d7rNLtWg0mG43iDwh9AOKdxam+AgAAQoTA=
Date: Tue, 29 Oct 2019 11:24:54 +0000
Message-ID: <CH2PR15MB35756D81929A6A19D6B9C0DA9A610@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <1572284277-26784-1-git-send-email-jon.maloy@ericsson.com>
 <054b985e-c8ad-56c5-c8e7-dad554629c64@windriver.com>
In-Reply-To: <054b985e-c8ad-56c5-c8e7-dad554629c64@windriver.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 309d242e-d099-49df-a212-08d75c629fab
x-ms-traffictypediagnostic: CH2PR15MB3576:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR15MB35765C33389EF4924D286A4E9A610@CH2PR15MB3576.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(366004)(396003)(13464003)(52314003)(199004)(189003)(8936002)(99286004)(476003)(316002)(25786009)(478600001)(26005)(186003)(102836004)(66066001)(486006)(33656002)(11346002)(53546011)(446003)(44832011)(14454004)(110136005)(54906003)(8676002)(81156014)(81166006)(6506007)(76176011)(7696005)(6116002)(3846002)(2906002)(229853002)(14444005)(256004)(5660300002)(4326008)(71200400001)(71190400001)(74316002)(305945005)(6246003)(7736002)(66946007)(76116006)(52536014)(66476007)(66556008)(64756008)(66446008)(55016002)(6436002)(9686003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3576;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AZ8LU3qVk6wvAbRvg1hnmhq5QDvipG22zjxJRdCfTtiKCeHjTails92nJTHMrf9LApzq0qAJo1/1/UGmiqv3kBlas7gLy73vK0/W7qpRbWnMBCcaii6N9qqVOTJdtwQO+Djp/yiMYP5FnTi9o2QNYVQcT6IP0BTw7vmUOXWzgcECfYsgcjMtdkY2U9w2cWjT6Y0wwb8/KuIOPWb5AQ+9NDFBGMJ4rkAXfn2jSug57C+4dpz2sSrLbYW9TElKtZGFmHrezJ9P/ZThfZSvrz6ZEgpcnT6EKj+7gpF4nYNiu3k/TRuCXdDX7fdML/yTrQ3JZcDNZgQ29Yqy0vY9XyJ23AvzLArY1pWgu/w50qISreZuJI6A4wV8tuh2B7OKo5KyB6XBKT3NNCrZfTtPEUqff+KXe0Lolayt6IvOSHF2I5OSGh8r55AAdCuviIW4iDfM
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 309d242e-d099-49df-a212-08d75c629fab
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:24:55.0341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iE1hgT+HzeJz80cTbTD7BBM9piaMiF6hwJg+qbjpfSbwKGEw+X1G4ekptw6pKul/hmzd/9PNsWxjRSlO/ZGtVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3576
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.68.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iPPcV-008RMC-CG
Subject: Re: [tipc-discussion] [net-next v3 1/1] tipc: add smart nagle
 feature
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
You're right. I'll fix this. Anyway, I just realized another improvement I could make, so I'll send a new version with both changes.

Regards
///jon


> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com>
> Sent: 29-Oct-19 06:24
> To: Jon Maloy <jon.maloy@ericsson.com>; Jon Maloy <maloy@donjonn.com>
> Cc: Mohan Krishna Ghanta Krishnamurthy <mohan.krishna.ghanta.krishnamurthy@ericsson.com>;
> parthasarathy.bhuvaragan@gmail.com; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang
> Huu Le <hoang.h.le@dektech.com.au>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; Gordan
> Mihaljevic <gordan.mihaljevic@dektech.com.au>; tipc-discussion@lists.sourceforge.net
> Subject: Re: [net-next v3 1/1] tipc: add smart nagle feature
> 
> On 10/29/19 1:37 AM, Jon Maloy wrote:
> > @@ -3007,6 +3068,9 @@ static int tipc_setsockopt(struct socket *sock, int lvl, int opt,
> >  	case TIPC_GROUP_LEAVE:
> >  		res = tipc_sk_leave(tsk);
> >  		break;
> > +	case TIPC_NODELAY:
> > +		tsk->nodelay = true;
> > +		break;
> >  	default:
> >  		res = -EINVAL;
> >  	}
> 
> Once user sets tsk->nodelay to true, there is no chance to set it back
> to false. Although this scenario rarely happens for us, it's better that
> we can provide the function.
> 
> For example, below is how TCP supports TCP_NODELAY option:
> 
>         case TCP_NODELAY:
>                 if (val) {
>                         /* TCP_NODELAY is weaker than TCP_CORK, so that
>                          * this option on corked socket is remembered, but
>                          * it is not activated until cork is cleared.
>                          *
>                          * However, when TCP_NODELAY is set we make
>                          * an explicit push, which overrides even TCP_CORK
>                          * for currently queued segments.
>                          */
>                         tp->nonagle |= TCP_NAGLE_OFF|TCP_NAGLE_PUSH;
>                         tcp_push_pending_frames(sk);
>                 } else {
>                         tp->nonagle &= ~TCP_NAGLE_OFF;
>                 }
>                 break;

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
