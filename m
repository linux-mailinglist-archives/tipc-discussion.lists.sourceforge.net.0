Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC53963C9C
	for <lists+tipc-discussion@lfdr.de>; Tue,  9 Jul 2019 22:16:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hkwWs-0003Bl-TR; Tue, 09 Jul 2019 20:15:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1hkwWq-0003Ba-HQ
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jul 2019 20:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UhGhIuFXIOyflNMGdqGdS0i3vWEzYlQ82RcY26Uj3oc=; b=GAcu0apTSrRzxcC/nA9PA7wcGm
 lPSvwN069r1/CgcpcjwTiHxTqxNXd5FdLWk53iwemwFVDH/QE0al57aDadXnUQxGz1KqgSdgbGIgP
 GSYt5+XHPODKjEZaXUEL7untbOF+f8Af+Sq15TS9ubs5vqCx/iLjUgu0xsIBMFyNXBOU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UhGhIuFXIOyflNMGdqGdS0i3vWEzYlQ82RcY26Uj3oc=; b=R7WFpRTaSEJWyThk7hY67LrnWq
 vxfpNPwF8+nw3gH2t1gLa//DO2kEirllRErdHpZOTxJaItEmkph7h4T4Z8G3yyPMUiXg02l9w5Qy/
 AL2F1E1feCKjmheuGlq+thBHGRhUk54JDzd4odB96JCCBYQ3DKJArqFoobkw/3mQq/B0=;
Received: from mail-eopbgr810059.outbound.protection.outlook.com
 ([40.107.81.59] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.90_1)
 id 1hkwWn-00DgXU-QI
 for tipc-discussion@lists.sourceforge.net; Tue, 09 Jul 2019 20:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UhGhIuFXIOyflNMGdqGdS0i3vWEzYlQ82RcY26Uj3oc=;
 b=NXqm2flOrAmCe9BTe2vHeGx6DX5lx7AheISuovmfOIGp74hFDHm+HvzOaGoTKDzPbhDINacl+aTqhDW7uD/QCX2aSoSM7VoMl/cVP60OE45g69CH38VsST44JfbYRKiaJWFpu+HryTjk6VqKPz2X/8/i1WBbfDj1vr+NvY1kipk=
Received: from MN2PR15MB3581.namprd15.prod.outlook.com (52.132.172.94) by
 MN2PR15MB2816.namprd15.prod.outlook.com (20.179.148.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Tue, 9 Jul 2019 20:15:44 +0000
Received: from MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0]) by MN2PR15MB3581.namprd15.prod.outlook.com
 ([fe80::7d02:e054:fcd1:f7a0%7]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 20:15:44 +0000
From: Jon Maloy <jon.maloy@ericsson.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, Chris Packham
 <Chris.Packham@alliedtelesis.co.nz>, "ying.xue@windriver.com"
 <ying.xue@windriver.com>, "davem@davemloft.net" <davem@davemloft.net>
Thread-Topic: [PATCH] tipc: ensure skb->lock is initialised
Thread-Index: AQHVNRbZCg2+IkEFUEKEsAEksjW2W6bB5j8AgABgI5CAAAiXAIAAV45A
Date: Tue, 9 Jul 2019 20:15:43 +0000
Message-ID: <MN2PR15MB35813EA3ADE7E5E83A657D3F9AF10@MN2PR15MB3581.namprd15.prod.outlook.com>
References: <20190707225328.15852-1-chris.packham@alliedtelesis.co.nz>
 <2298b9eb-100f-6130-60c4-0e5e2c7b84d1@gmail.com>
 <361940337b0d4833a5634ddd1e1896a9@svr-chch-ex1.atlnz.lc>
 <87fd2150548041219fc42bce80b63c9c@svr-chch-ex1.atlnz.lc>
 <b862a74b-9f1e-fb64-0641-550a83b64664@gmail.com>
 <MN2PR15MB35811151C4A627C0AF364CAC9AF10@MN2PR15MB3581.namprd15.prod.outlook.com>
 <ef9a2ec1-1413-e8f9-1193-d53cf8ee52ba@gmail.com>
In-Reply-To: <ef9a2ec1-1413-e8f9-1193-d53cf8ee52ba@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [24.225.233.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24d44e21-b776-42f1-b8e1-08d704aa38fd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR15MB2816; 
x-ms-traffictypediagnostic: MN2PR15MB2816:
x-microsoft-antispam-prvs: <MN2PR15MB28160DD2E6721138BB8D67169AF10@MN2PR15MB2816.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(366004)(189003)(199004)(13464003)(7696005)(2906002)(99286004)(305945005)(476003)(74316002)(316002)(6506007)(102836004)(53546011)(54906003)(478600001)(14454004)(110136005)(26005)(186003)(33656002)(4326008)(14444005)(256004)(2501003)(76176011)(8676002)(8936002)(68736007)(11346002)(71190400001)(446003)(44832011)(486006)(81156014)(81166006)(6436002)(25786009)(5660300002)(2201001)(86362001)(66476007)(76116006)(66556008)(52536014)(66446008)(64756008)(66946007)(7736002)(53936002)(6116002)(9686003)(3846002)(55016002)(71200400001)(66066001)(6246003)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR15MB2816;
 H:MN2PR15MB3581.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pfAykqAVsvo5XE/N0/CQJedya5n5mt99lIC+OxqIiiKtNoEamBk2PhSZJ5Ymn34Wf8HEBV39yhjtCghmhyWOZeebdh2xblaO2VsGT726LqsG9OzeJh1QK04JaPApIPYhhh7PePHJjhV2v6LzKrlq/Uq6DR5+WDVXRv2z23moWYpbG2jEXBW/hpOH5OXW/bynaD/9YeDLX1AR/YRtnWaTr3z/IO28z+ysnbZ2nMdqTN2rzl4GKlDZgq+0sW+CTFqhUEq+l6xpcGFe1MZS3d9VTjYaBolWuKyVnZHqItkQFLFDfqlwWiz2BUheKEPoeiVmOSOsLn8GuxJD6oafbd53T1Is4sdjPFFTCwiEuJz4jrWlOD9fiikr7yhNO7Urfq6vH+VQgpZKp9vhrtA7z29Bj+zQ/a4a5MQkNiCKYibIviQ=
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24d44e21-b776-42f1-b8e1-08d704aa38fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 20:15:44.0599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jon.maloy@ericsson.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB2816
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.81.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hkwWn-00DgXU-QI
Subject: Re: [tipc-discussion] [PATCH] tipc: ensure skb->lock is initialised
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



> -----Original Message-----
> From: Eric Dumazet <eric.dumazet@gmail.com>
> Sent: 9-Jul-19 09:46
> To: Jon Maloy <jon.maloy@ericsson.com>; Eric Dumazet
> <eric.dumazet@gmail.com>; Chris Packham
> <Chris.Packham@alliedtelesis.co.nz>; ying.xue@windriver.com;
> davem@davemloft.net
> Cc: netdev@vger.kernel.org; tipc-discussion@lists.sourceforge.net; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] tipc: ensure skb->lock is initialised
> 
> 
> 
> On 7/9/19 3:25 PM, Jon Maloy wrote:

[...]

> > TIPC is using the list lock at message reception within the scope of
> tipc_sk_rcv()/tipc_skb_peek_port(), so it is fundamental that the lock always
> is correctly initialized.
> 
> Where is the lock acquired, why was it only acquired by queue purge and not
> normal dequeues ???

It is acquired twice:
- First, in tipc_sk_rcv()->tipc_skb_peek_port(), to peek into one or more queue members and read their destination port number.
- Second, in tipc_sk_rcv()->tipc_sk_enqueue()->tipc_skb_dequeue() to unlink a list member from the queue.

> >>
> > [...]
> >>
> >> tipc_link_xmit() for example never acquires the spinlock, yet uses
> >> skb_peek() and __skb_dequeue()
> >
> >
> > You should look at tipc_node_xmit instead. Node local messages are
> > sent directly to tipc_sk_rcv(), and never go through tipc_link_xmit()
> 
> tipc_node_xmit() calls tipc_link_xmit() eventually, right ?

No. 
tipc_link_xmit() is called only for messages with a non-local destination.  Otherwise, tipc_node_xmit() sends node local messages directly to the destination socket via tipc_sk_rcv().
The argument 'xmitq' becomes 'inputq' in tipc_sk_rcv() and 'list' in tipc_skb_peek_port(), since those functions don't distinguish between local and node external incoming messages.

> 
> Please show me where the head->lock is acquired, and why it needed.

The argument  'inputq'  to tipc_sk_rcv() may come from two sources: 
1) As an aggregated member of each tipc_node::tipc_link_entry. This queue is needed to guarantee sequential delivery of messages from the node/link layer to the socket layer. In this case, there may be buffers for multiple destination sockets in the same queue, and we may have multiple concurrent tipc_sk_rcv() jobs working that queue. So, the lock is needed both for adding (in  link.c::tipc_data_input()), peeking and removing buffers.

2) The case you have been looking at, where it is created as 'xmitq' on the stack by a local socket.  Here, the lock is not strictly needed, as you have observed. But to reduce code duplication we have chosen to let the code in tipc_sk_rcv() handle both types of queues uniformly, i.e., as if they all contain buffers with potentially multiple destination sockets, worked on by multiple concurrent calls. This requires that the lock is initialized even for this type of queue. We have seen no measurable performance difference between this 'generic' reception algorithm and a tailor-made ditto for local messages only,  while the amount of saved code is significant.

> 
> If this is mandatory, then more fixes are needed than just initializing the lock
> for lockdep purposes.

It is not only for lockdep purposes, -it is essential.  But please provide details about where you see that more fixes are needed.

BR
///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
