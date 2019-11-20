Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 686C11041BA
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 18:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UoFW9YCNW842jfXTA6mLmNo4qRHYWyocDI5JOox6CqE=; b=GDZZPzp956OzV5ohhvSsWaNrw
	6eGahObwf0e+raR9QxuOYMerx6M5v4atZwz+rvHKYVwMP145OZyNO2Ne7ABAdZkCXscPHXG6NPeVa
	dez+pSO5ABUYfTx1IFmVn1fI2jQCjo5dJ+AhXKoO/U/aO1zwvJsoNJb4lRB8yldKx/qu0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXTQz-0005Bf-Ep; Wed, 20 Nov 2019 17:06:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jon.maloy@ericsson.com>) id 1iXTQx-0005BS-OX
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LP6gn8N/vbUo2heUUK96lza5qxJJU7P2I2x61V2PXGs=; b=MlMU78sF3aoYxs+WBWzQ13WMXy
 LwwXyQxLuoGrYT3bVzP0i1fwqVuj/UQWUwA3b7euVEauCFwCD9tSDd3znvQdyQJslPij6o+yAjs7M
 gB2hBlwXadpkbssktl+qPal/V/zja5X+oAd5SLM9DXrIgxOMtw2ilXauH7MEaWbHGCCU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LP6gn8N/vbUo2heUUK96lza5qxJJU7P2I2x61V2PXGs=; b=LyQQMFlZ2m4hULxoN1OmGfUv9Y
 haW2G/NcTEvw696bqqdmj1xKbKzuuYla3/RwxSLA6a1zxqJFkbKl11i7FdpWp/dWfYytwM5JPhHkq
 09QjirIraABnwLEYew10oamfbZLcTMJmFL6V8zrWfsjAO4OxZ/uudnucLMzUZpk8piMk=;
Received: from mail-eopbgr800078.outbound.protection.outlook.com
 ([40.107.80.78] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXTQr-007Wgt-N8
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 17:06:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPiHKAdEn3VGec2II2gciSBvnNmNXqXG2/q3ze9b/4fJl+gNMY0GXZTmsfSJV6tYusauxNTrxeVO4KRuwJernY9ZcbUaL6sGYXdUI3OGjkbPI4Y1PYG5j2IGOzs8Jz+iXW/QQJ+fUrzaiVMZ36nUmG9Dae/y5N3PW03Ai9oIOfuwUhUfQgWEKXDqonk2v93bvYgv9Bav83nrLlNCkF45Dy/CBOQHo32VvrqesiMhF0tuDI2f8h1vcfBVeYSv2k262aquSWWz5hZ8YmgHnyTaVRFxOm0g/cAqtmO3UHYyQtBxYn+yQTtsSrWKz9jaSFADie7jtCARLT3Y8hr5ns9Kpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LP6gn8N/vbUo2heUUK96lza5qxJJU7P2I2x61V2PXGs=;
 b=JfARdP4Uc1hiKylqhkvzf8AlvSSSQZ1Kxqt4M+K6p1Ao4VWty/xvsfiZIg8a3L0/rAGP8yGzt9E+DRpvKpSIkWOuj6Zvl9uFqXhqPLKMWHj/Rt4hKozWCTqcZc2CYuhYGeGpOdzeLLBfC7GRJvRb4AoM/Lp8c11SmNWjl7L2Vb4or6ag+sIOcaF9TgRh5oQmLFvPiXlKiR0GR+GHoBpz2asb2QOoIfXnfTbplgrCd25VGV9I3P3EQW7hmid0CxEfya4fr9soUm3YfjSVdvQKPCVGnTUTR+65+WZBrbn7BnPJz73Cur+J4C62K+N1Ojzb2mODzRDin/YdaRQB3ngsTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ericsson.com; dmarc=pass action=none header.from=ericsson.com;
 dkim=pass header.d=ericsson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ericsson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LP6gn8N/vbUo2heUUK96lza5qxJJU7P2I2x61V2PXGs=;
 b=vA+TxlKLtruFsExV6jEGeMDY9ZAsw24Wt9al/W1R0HhX/rOVg7cbHNQztFc+n9FI6fTxb9JUWcheBxBx46vl05Hc5GFj0k7CUcO7FeGyO3nipy2ITnjYkk5hTqKQNf9eCBhBkXa/MfQd4QfGGOae+naofAR7GMDXZJhhqtH7iW0=
Received: from CH2PR15MB3575.namprd15.prod.outlook.com (10.255.156.17) by
 CH2PR15MB3528.namprd15.prod.outlook.com (52.132.228.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.30; Wed, 20 Nov 2019 16:50:43 +0000
Received: from CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63]) by CH2PR15MB3575.namprd15.prod.outlook.com
 ([fe80::a0a2:ffd4:4a7f:7a63%7]) with mapi id 15.20.2451.031; Wed, 20 Nov 2019
 16:50:43 +0000
To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>, 'Ying Xue'
 <ying.xue@windriver.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [iproute2] tipc: add new commands to set TIPC AEAD key
Thread-Index: AQHVgoO8iWUFBnkhoEyqSPVcVyBoxqddNe8AgAAkq5CANkfPAIAA3dEg
Date: Wed, 20 Nov 2019 16:50:43 +0000
Message-ID: <CH2PR15MB3575C65A4B45397D98F080FA9A4F0@CH2PR15MB3575.namprd15.prod.outlook.com>
References: <20191014113658.13612-1-tuong.t.lien@dektech.com.au>
 <44e8bfe4-9f98-98c2-10f9-11f4a9efb6df@windriver.com>
 <CH2PR15MB3575DB8604A1D5352A1D8DD29A920@CH2PR15MB3575.namprd15.prod.outlook.com>
 <021c01d59f53$b9d7d790$2d8786b0$@dektech.com.au>
In-Reply-To: <021c01d59f53$b9d7d790$2d8786b0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jon.maloy@ericsson.com; 
x-originating-ip: [192.75.88.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a36ed1e-03b3-4af2-a3bd-08d76dd9c893
x-ms-traffictypediagnostic: CH2PR15MB3528:
x-ld-processed: 92e84ceb-fbfd-47ab-be52-080c6b87953f,ExtAddr
x-microsoft-antispam-prvs: <CH2PR15MB35287704679AA63F4DC2276E9A4F0@CH2PR15MB3528.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:411;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(13464003)(189003)(199004)(2501003)(71190400001)(33656002)(66476007)(11346002)(66946007)(66556008)(64756008)(86362001)(30864003)(110136005)(53546011)(81156014)(305945005)(99286004)(66446008)(52536014)(76116006)(7736002)(6116002)(3846002)(5660300002)(229853002)(74316002)(9686003)(6506007)(14454004)(66066001)(6246003)(71200400001)(6436002)(55016002)(2906002)(478600001)(102836004)(8676002)(7696005)(2201001)(76176011)(81166006)(8936002)(446003)(256004)(316002)(26005)(14444005)(25786009)(44832011)(476003)(486006)(186003)(5024004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR15MB3528;
 H:CH2PR15MB3575.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ericsson.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bJEzR24Q2psox5XoL71+fam2wqqhHlYQUc5D7yWh4hEOypvS2btolvT3kCe7Rc8bagq3S0HIDQykp/FzDOuxE3EXHNeXcAZs6OKwdfMhvsJlqDCfPVP5wqLA4f9m671v8e8YE8kAGCt7eoNe76f3B0RLIXaOt1Mmj5tNPsT0lxGpzng7q58U1/Hnrmt6Q1bQDWPST6SqxXZ7MinhuH/yKL8UQd18DXX6b6njxaw9irGxczHk02hC/k3inbx+aWPmXxLg1gIV2Wbv/8dh0aDTHkP06pX91/dnJCqVigL9WB5voI+wQ8CEllIfgZk6zsQqBYYuqA5lwfifLlU+wnTCydXpYdacOb/8kFGxKfy/2RWPgX/N6tf4uLBkjVsoldAa2foWEprbnsBboR4Z98r5gyrivs2vTSPd4/JYjlMYYotlge1F7Zo1gHdfbBrE6QWO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ericsson.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a36ed1e-03b3-4af2-a3bd-08d76dd9c893
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 16:50:43.4755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 92e84ceb-fbfd-47ab-be52-080c6b87953f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OAijtG1ge2kEcepXwww49iwb8BYLPUns0t9UfZnXqaxvIqQfoE30QAcHkv/Dh6rK7Ktre+fEP8B8uqng8XD4XA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR15MB3528
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.80.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1iXTQr-007Wgt-N8
Subject: Re: [tipc-discussion] [iproute2] tipc: add new commands to set TIPC
 AEAD key
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

Acked-by: Jon Maloy <jon.maloy@ericsson.com>


> -----Original Message-----
> From: Tuong Lien Tong <tuong.t.lien@dektech.com.au>
> Sent: 19-Nov-19 22:37
> To: Jon Maloy <jon.maloy@ericsson.com>; 'Ying Xue' <ying.xue@windriver.com>; tipc-
> discussion@lists.sourceforge.net; maloy@donjonn.com
> Subject: RE: [iproute2] tipc: add new commands to set TIPC AEAD key
> 
> Hi Jon/Ying,
> 
> We still have this patch (i.e. for the 'tipc node set/flush key...' commands), may I put your ACK on it before
> sending to iproute2-next?
> Many thanks!
> 
> BR/Tuong
> 
> -----Original Message-----
> From: Jon Maloy <jon.maloy@ericsson.com>
> Sent: Wednesday, October 16, 2019 9:51 PM
> To: Ying Xue <ying.xue@windriver.com>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-
> discussion@lists.sourceforge.net; maloy@donjonn.com
> Subject: RE: [iproute2] tipc: add new commands to set TIPC AEAD key
> 
> 
> 
> > -----Original Message-----
> > From: Ying Xue <ying.xue@windriver.com>
> > Sent: 16-Oct-19 08:30
> > To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-
> > discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>;
> > maloy@donjonn.com
> > Subject: Re: [iproute2] tipc: add new commands to set TIPC AEAD key
> >
> > Tt looks like we will use "tipc node" command to configure static key to TIPC
> > module, right?
> 
> The key is static in the sense that TIPC itself cannot change the key. But the protocol ensures that keys can
> be replaced without any traffic disturbances.
> 
> >
> > Do we plan to support dynamic key setting? If yes, what kinds of key exchange
> > protocol would we use? For example, in IPSEC, it uses IKEv2 as its key
> > exchange protocol.
> 
> At the moment we assume there is an external user land framework where node authentication is done
> and where keys are generated and distributed (via TLS) to the nodes.
> When we want to replace a key (probably at fix pre-defined intervals), the framework has to generate new
> keys and distribute/inject those to TIPC.
> 
> >
> > Will key be expired after a specific lifetime? For instance, in
> > IPSEC/Raccoon2 or strongswan, they use rekey feature to provide this
> > function to make security association safer.
> 
> We are considering this, so that the external framework can be kept simpler or even be eliminated. That
> would be the next step, once this series is applied.
> 
> Regards
> ///jon
> 
> 
> >
> > On 10/14/19 7:36 PM, Tuong Lien wrote:
> > > Two new commands are added as part of 'tipc node' command:
> > >
> > >  $tipc node set key KEY [algname ALGNAME] [nodeid NODEID]  $tipc node
> > > flush key
> > >
> > > which enable user to set and remove AEAD keys in kernel TIPC.
> > >
> > > For the 'set key' command, the given 'nodeid' parameter decides the
> > > mode to be applied to the key, particularly:
> > >
> > > - If NODEID is empty, the key is a 'cluster' key which will be used
> > > for all message encryption/decryption from/to the node (i.e. both TX & RX).
> > > The same key needs to be set in the other nodes i.e. the 'cluster key'
> > > mode.
> > >
> > > - If NODEID is own node, the key is used for message encryption (TX)
> > > from the node. Whereas, if NODEID is a peer node, the key is for
> > > message decryption (RX) from that peer node.
> > > This is the 'per-node-key' mode that each nodes in the cluster has its
> > > specific (TX) key.
> > >
> > > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > > ---
> > >  include/uapi/linux/tipc.h         |  21 ++++++
> > >  include/uapi/linux/tipc_netlink.h |   4 ++
> > >  tipc/misc.c                       |  38 +++++++++++
> > >  tipc/misc.h                       |   1 +
> > >  tipc/node.c                       | 133
> > +++++++++++++++++++++++++++++++++++++-
> > >  5 files changed, 195 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
> > > index e16cb4e2..b118ce9b 100644
> > > --- a/include/uapi/linux/tipc.h
> > > +++ b/include/uapi/linux/tipc.h
> > > @@ -232,6 +232,27 @@ struct tipc_sioc_nodeid_req {
> > >  	char node_id[TIPC_NODEID_LEN];
> > >  };
> > >
> > > +/*
> > > + * TIPC Crypto, AEAD mode
> > > + */
> > > +#define TIPC_AEAD_MAX_ALG_NAME	(32)
> > > +#define TIPC_AEAD_MIN_KEYLEN	(16 + 4)
> > > +#define TIPC_AEAD_MAX_KEYLEN	(32 + 4)
> > > +
> > > +struct tipc_aead_key {
> > > +	char alg_name[TIPC_AEAD_MAX_ALG_NAME];
> > > +	unsigned int keylen;	/* in bytes */
> > > +	char key[];
> > > +};
> > > +
> > > +#define TIPC_AEAD_KEY_MAX_SIZE	(sizeof(struct tipc_aead_key) + \
> > > +						TIPC_AEAD_MAX_KEYLEN)
> > > +
> > > +static inline int tipc_aead_key_size(struct tipc_aead_key *key) {
> > > +	return sizeof(*key) + key->keylen;
> > > +}
> > > +
> > >  /* The macros and functions below are deprecated:
> > >   */
> > >
> > > diff --git a/include/uapi/linux/tipc_netlink.h
> > > b/include/uapi/linux/tipc_netlink.h
> > > index efb958fd..6c2194ab 100644
> > > --- a/include/uapi/linux/tipc_netlink.h
> > > +++ b/include/uapi/linux/tipc_netlink.h
> > > @@ -63,6 +63,8 @@ enum {
> > >  	TIPC_NL_PEER_REMOVE,
> > >  	TIPC_NL_BEARER_ADD,
> > >  	TIPC_NL_UDP_GET_REMOTEIP,
> > > +	TIPC_NL_KEY_SET,
> > > +	TIPC_NL_KEY_FLUSH,
> > >
> > >  	__TIPC_NL_CMD_MAX,
> > >  	TIPC_NL_CMD_MAX = __TIPC_NL_CMD_MAX - 1 @@ -160,6 +162,8
> > @@ enum {
> > >  	TIPC_NLA_NODE_UNSPEC,
> > >  	TIPC_NLA_NODE_ADDR,		/* u32 */
> > >  	TIPC_NLA_NODE_UP,		/* flag */
> > > +	TIPC_NLA_NODE_ID,		/* data */
> > > +	TIPC_NLA_NODE_KEY,		/* data */
> > >
> > >  	__TIPC_NLA_NODE_MAX,
> > >  	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1 diff --git
> > a/tipc/misc.c
> > > b/tipc/misc.c index e4b1cd0c..1daf3072 100644
> > > --- a/tipc/misc.c
> > > +++ b/tipc/misc.c
> > > @@ -98,6 +98,44 @@ int str2nodeid(char *str, uint8_t *id)
> > >  	return 0;
> > >  }
> > >
> > > +int str2key(char *str, struct tipc_aead_key *key) {
> > > +	int len = strlen(str);
> > > +	int ishex = 0;
> > > +	int i;
> > > +
> > > +	/* Check if the input is a hex string (i.e. 0x...) */
> > > +	if (len > 2 && strncmp(str, "0x", 2) == 0) {
> > > +	    ishex = is_hex(str + 2, len - 2 - 1);
> > > +	    if (ishex) {
> > > +		len -= 2;
> > > +		str += 2;
> > > +	    }
> > > +	}
> > > +
> > > +	/* Obtain key: */
> > > +	if (!ishex) {
> > > +		key->keylen = len;
> > > +		memcpy(key->key, str, len);
> > > +	} else {
> > > +		/* Convert hex string to key */
> > > +		key->keylen = (len + 1) / 2;
> > > +		for (i = 0; i < key->keylen; i++) {
> > > +			if (i == 0 && len % 2 != 0) {
> > > +				if (sscanf(str, "%1hhx", &key->key[0]) != 1)
> > > +					return -1;
> > > +				str += 1;
> > > +				continue;
> > > +			}
> > > +			if (sscanf(str, "%2hhx", &key->key[i]) != 1)
> > > +				return -1;
> > > +			str += 2;
> > > +		}
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  void nodeid2str(uint8_t *id, char *str)  {
> > >  	int i;
> > > diff --git a/tipc/misc.h b/tipc/misc.h index ff2f31f1..59309f68 100644
> > > --- a/tipc/misc.h
> > > +++ b/tipc/misc.h
> > > @@ -18,5 +18,6 @@ uint32_t str2addr(char *str);  int str2nodeid(char
> > > *str, uint8_t *id);  void nodeid2str(uint8_t *id, char *str);  void
> > > hash2nodestr(uint32_t hash, char *str);
> > > +int str2key(char *str, struct tipc_aead_key *key);
> > >
> > >  #endif
> > > diff --git a/tipc/node.c b/tipc/node.c index 2fec6753..fc81bd30 100644
> > > --- a/tipc/node.c
> > > +++ b/tipc/node.c
> > > @@ -157,6 +157,111 @@ static int cmd_node_set_nodeid(struct nlmsghdr
> > *nlh, const struct cmd *cmd,
> > >  	return msg_doit(nlh, NULL, NULL);
> > >  }
> > >
> > > +static void cmd_node_set_key_help(struct cmdl *cmdl) {
> > > +	fprintf(stderr,
> > > +		"Usage: %s node set key KEY [algname ALGNAME] [nodeid
> > NODEID]\n\n"
> > > +		"PROPERTIES\n"
> > > +		" KEY                   - Symmetric KEY & SALT as a normal or hex
> > string\n"
> > > +		"                         that consists of two parts:\n"
> > > +		"                         [KEY: 16, 24 or 32 octets][SALT: 4 octets]\n\n"
> > > +		" algname ALGNAME       - Default: \"gcm(aes)\"\n\n"
> > > +		" nodeid NODEID         - Own or peer node identity to which the
> > key will\n"
> > > +		"                         be attached. If not present, the key is a cluster\n"
> > > +		"                         key!\n\n"
> > > +		"EXAMPLES\n"
> > > +		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\"
> > nodeid node1\n"
> > > +		"  %s node set key
> > 0x746869735F69735F615F6B657931365F73616C74 nodeid node2\n\n",
> > > +		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0]); }
> > > +
> > > +static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
> > > +			    struct cmdl *cmdl, void *data) {
> > > +	struct {
> > > +		struct tipc_aead_key key;
> > > +		char mem[TIPC_AEAD_MAX_KEYLEN + 1];
> > > +	} input = {};
> > > +	struct opt opts[] = {
> > > +		{ "algname",	OPT_KEYVAL,	NULL },
> > > +		{ "nodeid",	OPT_KEYVAL,	NULL },
> > > +		{ NULL }
> > > +	};
> > > +	struct nlattr *nest;
> > > +	struct opt *opt_algname, *opt_nodeid;
> > > +	char buf[MNL_SOCKET_BUFFER_SIZE];
> > > +	uint8_t id[TIPC_NODEID_LEN] = {0,};
> > > +	int keysize;
> > > +	char *str;
> > > +
> > > +	if (help_flag) {
> > > +		(cmd->help)(cmdl);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (cmdl->optind >= cmdl->argc) {
> > > +		fprintf(stderr, "error, missing key\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	/* Get user key */
> > > +	str = shift_cmdl(cmdl);
> > > +	if (str2key(str, &input.key)) {
> > > +		fprintf(stderr, "error, invalid key input\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	if (parse_opts(opts, cmdl) < 0)
> > > +		return -EINVAL;
> > > +
> > > +	/* Get algorithm name, default: "gcm(aes)" */
> > > +	opt_algname = get_opt(opts, "algname");
> > > +	if (!opt_algname)
> > > +		strcpy(input.key.alg_name, "gcm(aes)");
> > > +	else
> > > +		strcpy(input.key.alg_name, opt_algname->val);
> > > +
> > > +	/* Get node identity */
> > > +	opt_nodeid = get_opt(opts, "nodeid");
> > > +	if (opt_nodeid && str2nodeid(opt_nodeid->val, id)) {
> > > +		fprintf(stderr, "error, invalid node identity\n");
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	/* Init & do the command */
> > > +	nlh = msg_init(buf, TIPC_NL_KEY_SET);
> > > +	if (!nlh) {
> > > +		fprintf(stderr, "error, message initialisation failed\n");
> > > +		return -1;
> > > +	}
> > > +	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NODE);
> > > +	keysize = tipc_aead_key_size(&input.key);
> > > +	mnl_attr_put(nlh, TIPC_NLA_NODE_KEY, keysize, &input.key);
> > > +	if (opt_nodeid)
> > > +		mnl_attr_put(nlh, TIPC_NLA_NODE_ID, TIPC_NODEID_LEN, id);
> > > +	mnl_attr_nest_end(nlh, nest);
> > > +	return msg_doit(nlh, NULL, NULL);
> > > +}
> > > +
> > > +static int cmd_node_flush_key(struct nlmsghdr *nlh, const struct cmd
> > *cmd,
> > > +			      struct cmdl *cmdl, void *data) {
> > > +	char buf[MNL_SOCKET_BUFFER_SIZE];
> > > +
> > > +	if (help_flag) {
> > > +		(cmd->help)(cmdl);
> > > +		return -EINVAL;
> > > +	}
> > > +
> > > +	/* Init & do the command */
> > > +	nlh = msg_init(buf, TIPC_NL_KEY_FLUSH);
> > > +	if (!nlh) {
> > > +		fprintf(stderr, "error, message initialisation failed\n");
> > > +		return -1;
> > > +	}
> > > +	return msg_doit(nlh, NULL, NULL);
> > > +}
> > > +
> > >  static int nodeid_get_cb(const struct nlmsghdr *nlh, void *data)  {
> > >  	struct nlattr *info[TIPC_NLA_MAX + 1] = {}; @@ -270,13 +375,34 @@
> > > static int cmd_node_set_netid(struct nlmsghdr *nlh, const struct cmd *cmd,
> > >  	return msg_doit(nlh, NULL, NULL);
> > >  }
> > >
> > > +static void cmd_node_flush_help(struct cmdl *cmdl) {
> > > +	fprintf(stderr,
> > > +		"Usage: %s node flush PROPERTY\n\n"
> > > +		"PROPERTIES\n"
> > > +		" key                   - Flush all symmetric-keys\n",
> > > +		cmdl->argv[0]);
> > > +}
> > > +
> > > +static int cmd_node_flush(struct nlmsghdr *nlh, const struct cmd *cmd,
> > > +			  struct cmdl *cmdl, void *data)
> > > +{
> > > +	const struct cmd cmds[] = {
> > > +		{ "key",        cmd_node_flush_key,     NULL },
> > > +		{ NULL }
> > > +	};
> > > +
> > > +	return run_cmd(nlh, cmd, cmds, cmdl, NULL); }
> > > +
> > >  static void cmd_node_set_help(struct cmdl *cmdl)  {
> > >  	fprintf(stderr,
> > >  		"Usage: %s node set PROPERTY\n\n"
> > >  		"PROPERTIES\n"
> > >  		" identity NODEID       - Set node identity\n"
> > > -		" clusterid CLUSTERID   - Set local cluster id\n",
> > > +		" clusterid CLUSTERID   - Set local cluster id\n"
> > > +		" key PROPERTY          - Set symmetric-key\n",
> > >  		cmdl->argv[0]);
> > >  }
> > >
> > > @@ -288,6 +414,7 @@ static int cmd_node_set(struct nlmsghdr *nlh,
> > const struct cmd *cmd,
> > >  		{ "identity",	cmd_node_set_nodeid,	NULL },
> > >  		{ "netid",	cmd_node_set_netid,	NULL },
> > >  		{ "clusterid",	cmd_node_set_netid,	NULL },
> > > +		{ "key",	cmd_node_set_key,	cmd_node_set_key_help },
> > >  		{ NULL }
> > >  	};
> > >
> > > @@ -325,7 +452,8 @@ void cmd_node_help(struct cmdl *cmdl)
> > >  		"COMMANDS\n"
> > >  		" list                  - List remote nodes\n"
> > >  		" get                   - Get local node parameters\n"
> > > -		" set                   - Set local node parameters\n",
> > > +		" set                   - Set local node parameters\n"
> > > +		" flush                 - Flush local node parameters\n",
> > >  		cmdl->argv[0]);
> > >  }
> > >
> > > @@ -336,6 +464,7 @@ int cmd_node(struct nlmsghdr *nlh, const struct
> > cmd *cmd, struct cmdl *cmdl,
> > >  		{ "list",	cmd_node_list,	NULL },
> > >  		{ "get",	cmd_node_get,	cmd_node_get_help },
> > >  		{ "set",	cmd_node_set,	cmd_node_set_help },
> > > +		{ "flush",	cmd_node_flush, cmd_node_flush_help},
> > >  		{ NULL }
> > >  	};
> > >
> > >


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
