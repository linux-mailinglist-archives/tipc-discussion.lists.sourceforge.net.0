Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F583103DDF
	for <lists+tipc-discussion@lfdr.de>; Wed, 20 Nov 2019 16:03:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iXRVY-00080M-Oz; Wed, 20 Nov 2019 15:03:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iXRVX-0007zz-8d
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 15:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sFrMEA2//ZmoOtIQB7zN/Lo2hw5DSxERXRtN3HWofco=; b=isE9aczpUPp5LIb/gKlAqGnxtR
 jKyz6RHHneK2DfAWCTkfVxvKlXLCp3oHkVych7fz9C3R/DwGV5Y79voYM2H2rLH5wwoEzxn9xZw15
 0WOA0/WAInU+FZN5SzNwUhRIsdOvp1av5hWa5H/+Jgfhl6+OdKbv4uyP1MJ0D0tSlFXQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sFrMEA2//ZmoOtIQB7zN/Lo2hw5DSxERXRtN3HWofco=; b=hffS7FaEFQtytVDx8RWg7Rkcdx
 FDpkaD99scYpj0lZZyn36/nZSaUJKOLG9ve2Z1git2xQHz3LmZGcva5Gdh/oSvz74mu1lgucIsWPY
 fGS1LxGPlP8fa9Gj4PYvt1LzRwfRsXNBPVjceAXJ5HSpXhmmwGo61KLhZlB4keoJUuuo=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iXRVV-007R9C-56
 for tipc-discussion@lists.sourceforge.net; Wed, 20 Nov 2019 15:03:03 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAKF2dfw030074
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 20 Nov 2019 07:02:40 -0800
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.75]) by
 ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000; Wed,
 20 Nov 2019 07:02:38 -0800
From: "Xue, Ying" <Ying.Xue@windriver.com>
To: Tuong Lien Tong <tuong.t.lien@dektech.com.au>, "'Jon Maloy'"
 <jon.maloy@ericsson.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, "maloy@donjonn.com"
 <maloy@donjonn.com>
Thread-Topic: [iproute2] tipc: add new commands to set TIPC AEAD key
Thread-Index: AdWEHz1a8L9rS71mQAyIZcsKO3EL9AIPNMr9AjRFMOWoFPAasKf/43Ow
Date: Wed, 20 Nov 2019 15:02:38 +0000
Message-ID: <25A14D9CFAB7B34FB9440F90AFD35233013CAAB596@ALA-MBD.corp.ad.wrs.com>
References: <20191014113658.13612-1-tuong.t.lien@dektech.com.au>
 <44e8bfe4-9f98-98c2-10f9-11f4a9efb6df@windriver.com>
 <CH2PR15MB3575DB8604A1D5352A1D8DD29A920@CH2PR15MB3575.namprd15.prod.outlook.com>
 <021c01d59f53$b9d7d790$2d8786b0$@dektech.com.au>
In-Reply-To: <021c01d59f53$b9d7d790$2d8786b0$@dektech.com.au>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.116]
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iXRVV-007R9C-56
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Tuong,

This patch is fine for us. Sure, you can my ack-by.

Thanks,
Yiing

-----Original Message-----
From: Tuong Lien Tong [mailto:tuong.t.lien@dektech.com.au] 
Sent: Wednesday, November 20, 2019 11:37 AM
To: 'Jon Maloy'; Xue, Ying; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com
Subject: RE: [iproute2] tipc: add new commands to set TIPC AEAD key

Hi Jon/Ying,

We still have this patch (i.e. for the 'tipc node set/flush key...' commands), may I put your ACK on it before sending to iproute2-next?
Many thanks!

BR/Tuong

-----Original Message-----
From: Jon Maloy <jon.maloy@ericsson.com> 
Sent: Wednesday, October 16, 2019 9:51 PM
To: Ying Xue <ying.xue@windriver.com>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com
Subject: RE: [iproute2] tipc: add new commands to set TIPC AEAD key



> -----Original Message-----
> From: Ying Xue <ying.xue@windriver.com>
> Sent: 16-Oct-19 08:30
> To: Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-
> discussion@lists.sourceforge.net; Jon Maloy <jon.maloy@ericsson.com>;
> maloy@donjonn.com
> Subject: Re: [iproute2] tipc: add new commands to set TIPC AEAD key
> 
> Tt looks like we will use "tipc node" command to configure static key to TIPC
> module, right?

The key is static in the sense that TIPC itself cannot change the key. But the protocol ensures that keys can be replaced without any traffic disturbances.

> 
> Do we plan to support dynamic key setting? If yes, what kinds of key exchange
> protocol would we use? For example, in IPSEC, it uses IKEv2 as its key
> exchange protocol.

At the moment we assume there is an external user land framework where node authentication is done and where keys are generated and distributed (via TLS) to the nodes.
When we want to replace a key (probably at fix pre-defined intervals), the framework has to generate new keys and distribute/inject those to TIPC.

> 
> Will key be expired after a specific lifetime? For instance, in
> IPSEC/Raccoon2 or strongswan, they use rekey feature to provide this
> function to make security association safer.

We are considering this, so that the external framework can be kept simpler or even be eliminated. That would be the next step, once this series is applied.

Regards
///jon


> 
> On 10/14/19 7:36 PM, Tuong Lien wrote:
> > Two new commands are added as part of 'tipc node' command:
> >
> >  $tipc node set key KEY [algname ALGNAME] [nodeid NODEID]  $tipc node
> > flush key
> >
> > which enable user to set and remove AEAD keys in kernel TIPC.
> >
> > For the 'set key' command, the given 'nodeid' parameter decides the
> > mode to be applied to the key, particularly:
> >
> > - If NODEID is empty, the key is a 'cluster' key which will be used
> > for all message encryption/decryption from/to the node (i.e. both TX & RX).
> > The same key needs to be set in the other nodes i.e. the 'cluster key'
> > mode.
> >
> > - If NODEID is own node, the key is used for message encryption (TX)
> > from the node. Whereas, if NODEID is a peer node, the key is for
> > message decryption (RX) from that peer node.
> > This is the 'per-node-key' mode that each nodes in the cluster has its
> > specific (TX) key.
> >
> > Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> > ---
> >  include/uapi/linux/tipc.h         |  21 ++++++
> >  include/uapi/linux/tipc_netlink.h |   4 ++
> >  tipc/misc.c                       |  38 +++++++++++
> >  tipc/misc.h                       |   1 +
> >  tipc/node.c                       | 133
> +++++++++++++++++++++++++++++++++++++-
> >  5 files changed, 195 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/uapi/linux/tipc.h b/include/uapi/linux/tipc.h
> > index e16cb4e2..b118ce9b 100644
> > --- a/include/uapi/linux/tipc.h
> > +++ b/include/uapi/linux/tipc.h
> > @@ -232,6 +232,27 @@ struct tipc_sioc_nodeid_req {
> >  	char node_id[TIPC_NODEID_LEN];
> >  };
> >
> > +/*
> > + * TIPC Crypto, AEAD mode
> > + */
> > +#define TIPC_AEAD_MAX_ALG_NAME	(32)
> > +#define TIPC_AEAD_MIN_KEYLEN	(16 + 4)
> > +#define TIPC_AEAD_MAX_KEYLEN	(32 + 4)
> > +
> > +struct tipc_aead_key {
> > +	char alg_name[TIPC_AEAD_MAX_ALG_NAME];
> > +	unsigned int keylen;	/* in bytes */
> > +	char key[];
> > +};
> > +
> > +#define TIPC_AEAD_KEY_MAX_SIZE	(sizeof(struct tipc_aead_key) + \
> > +						TIPC_AEAD_MAX_KEYLEN)
> > +
> > +static inline int tipc_aead_key_size(struct tipc_aead_key *key) {
> > +	return sizeof(*key) + key->keylen;
> > +}
> > +
> >  /* The macros and functions below are deprecated:
> >   */
> >
> > diff --git a/include/uapi/linux/tipc_netlink.h
> > b/include/uapi/linux/tipc_netlink.h
> > index efb958fd..6c2194ab 100644
> > --- a/include/uapi/linux/tipc_netlink.h
> > +++ b/include/uapi/linux/tipc_netlink.h
> > @@ -63,6 +63,8 @@ enum {
> >  	TIPC_NL_PEER_REMOVE,
> >  	TIPC_NL_BEARER_ADD,
> >  	TIPC_NL_UDP_GET_REMOTEIP,
> > +	TIPC_NL_KEY_SET,
> > +	TIPC_NL_KEY_FLUSH,
> >
> >  	__TIPC_NL_CMD_MAX,
> >  	TIPC_NL_CMD_MAX = __TIPC_NL_CMD_MAX - 1 @@ -160,6 +162,8
> @@ enum {
> >  	TIPC_NLA_NODE_UNSPEC,
> >  	TIPC_NLA_NODE_ADDR,		/* u32 */
> >  	TIPC_NLA_NODE_UP,		/* flag */
> > +	TIPC_NLA_NODE_ID,		/* data */
> > +	TIPC_NLA_NODE_KEY,		/* data */
> >
> >  	__TIPC_NLA_NODE_MAX,
> >  	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1 diff --git
> a/tipc/misc.c
> > b/tipc/misc.c index e4b1cd0c..1daf3072 100644
> > --- a/tipc/misc.c
> > +++ b/tipc/misc.c
> > @@ -98,6 +98,44 @@ int str2nodeid(char *str, uint8_t *id)
> >  	return 0;
> >  }
> >
> > +int str2key(char *str, struct tipc_aead_key *key) {
> > +	int len = strlen(str);
> > +	int ishex = 0;
> > +	int i;
> > +
> > +	/* Check if the input is a hex string (i.e. 0x...) */
> > +	if (len > 2 && strncmp(str, "0x", 2) == 0) {
> > +	    ishex = is_hex(str + 2, len - 2 - 1);
> > +	    if (ishex) {
> > +		len -= 2;
> > +		str += 2;
> > +	    }
> > +	}
> > +
> > +	/* Obtain key: */
> > +	if (!ishex) {
> > +		key->keylen = len;
> > +		memcpy(key->key, str, len);
> > +	} else {
> > +		/* Convert hex string to key */
> > +		key->keylen = (len + 1) / 2;
> > +		for (i = 0; i < key->keylen; i++) {
> > +			if (i == 0 && len % 2 != 0) {
> > +				if (sscanf(str, "%1hhx", &key->key[0]) != 1)
> > +					return -1;
> > +				str += 1;
> > +				continue;
> > +			}
> > +			if (sscanf(str, "%2hhx", &key->key[i]) != 1)
> > +				return -1;
> > +			str += 2;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  void nodeid2str(uint8_t *id, char *str)  {
> >  	int i;
> > diff --git a/tipc/misc.h b/tipc/misc.h index ff2f31f1..59309f68 100644
> > --- a/tipc/misc.h
> > +++ b/tipc/misc.h
> > @@ -18,5 +18,6 @@ uint32_t str2addr(char *str);  int str2nodeid(char
> > *str, uint8_t *id);  void nodeid2str(uint8_t *id, char *str);  void
> > hash2nodestr(uint32_t hash, char *str);
> > +int str2key(char *str, struct tipc_aead_key *key);
> >
> >  #endif
> > diff --git a/tipc/node.c b/tipc/node.c index 2fec6753..fc81bd30 100644
> > --- a/tipc/node.c
> > +++ b/tipc/node.c
> > @@ -157,6 +157,111 @@ static int cmd_node_set_nodeid(struct nlmsghdr
> *nlh, const struct cmd *cmd,
> >  	return msg_doit(nlh, NULL, NULL);
> >  }
> >
> > +static void cmd_node_set_key_help(struct cmdl *cmdl) {
> > +	fprintf(stderr,
> > +		"Usage: %s node set key KEY [algname ALGNAME] [nodeid
> NODEID]\n\n"
> > +		"PROPERTIES\n"
> > +		" KEY                   - Symmetric KEY & SALT as a normal or hex
> string\n"
> > +		"                         that consists of two parts:\n"
> > +		"                         [KEY: 16, 24 or 32 octets][SALT: 4 octets]\n\n"
> > +		" algname ALGNAME       - Default: \"gcm(aes)\"\n\n"
> > +		" nodeid NODEID         - Own or peer node identity to which the
> key will\n"
> > +		"                         be attached. If not present, the key is a cluster\n"
> > +		"                         key!\n\n"
> > +		"EXAMPLES\n"
> > +		"  %s node set key this_is_a_key16_salt algname \"gcm(aes)\"
> nodeid node1\n"
> > +		"  %s node set key
> 0x746869735F69735F615F6B657931365F73616C74 nodeid node2\n\n",
> > +		cmdl->argv[0], cmdl->argv[0], cmdl->argv[0]); }
> > +
> > +static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
> > +			    struct cmdl *cmdl, void *data) {
> > +	struct {
> > +		struct tipc_aead_key key;
> > +		char mem[TIPC_AEAD_MAX_KEYLEN + 1];
> > +	} input = {};
> > +	struct opt opts[] = {
> > +		{ "algname",	OPT_KEYVAL,	NULL },
> > +		{ "nodeid",	OPT_KEYVAL,	NULL },
> > +		{ NULL }
> > +	};
> > +	struct nlattr *nest;
> > +	struct opt *opt_algname, *opt_nodeid;
> > +	char buf[MNL_SOCKET_BUFFER_SIZE];
> > +	uint8_t id[TIPC_NODEID_LEN] = {0,};
> > +	int keysize;
> > +	char *str;
> > +
> > +	if (help_flag) {
> > +		(cmd->help)(cmdl);
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (cmdl->optind >= cmdl->argc) {
> > +		fprintf(stderr, "error, missing key\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Get user key */
> > +	str = shift_cmdl(cmdl);
> > +	if (str2key(str, &input.key)) {
> > +		fprintf(stderr, "error, invalid key input\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (parse_opts(opts, cmdl) < 0)
> > +		return -EINVAL;
> > +
> > +	/* Get algorithm name, default: "gcm(aes)" */
> > +	opt_algname = get_opt(opts, "algname");
> > +	if (!opt_algname)
> > +		strcpy(input.key.alg_name, "gcm(aes)");
> > +	else
> > +		strcpy(input.key.alg_name, opt_algname->val);
> > +
> > +	/* Get node identity */
> > +	opt_nodeid = get_opt(opts, "nodeid");
> > +	if (opt_nodeid && str2nodeid(opt_nodeid->val, id)) {
> > +		fprintf(stderr, "error, invalid node identity\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Init & do the command */
> > +	nlh = msg_init(buf, TIPC_NL_KEY_SET);
> > +	if (!nlh) {
> > +		fprintf(stderr, "error, message initialisation failed\n");
> > +		return -1;
> > +	}
> > +	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NODE);
> > +	keysize = tipc_aead_key_size(&input.key);
> > +	mnl_attr_put(nlh, TIPC_NLA_NODE_KEY, keysize, &input.key);
> > +	if (opt_nodeid)
> > +		mnl_attr_put(nlh, TIPC_NLA_NODE_ID, TIPC_NODEID_LEN, id);
> > +	mnl_attr_nest_end(nlh, nest);
> > +	return msg_doit(nlh, NULL, NULL);
> > +}
> > +
> > +static int cmd_node_flush_key(struct nlmsghdr *nlh, const struct cmd
> *cmd,
> > +			      struct cmdl *cmdl, void *data) {
> > +	char buf[MNL_SOCKET_BUFFER_SIZE];
> > +
> > +	if (help_flag) {
> > +		(cmd->help)(cmdl);
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Init & do the command */
> > +	nlh = msg_init(buf, TIPC_NL_KEY_FLUSH);
> > +	if (!nlh) {
> > +		fprintf(stderr, "error, message initialisation failed\n");
> > +		return -1;
> > +	}
> > +	return msg_doit(nlh, NULL, NULL);
> > +}
> > +
> >  static int nodeid_get_cb(const struct nlmsghdr *nlh, void *data)  {
> >  	struct nlattr *info[TIPC_NLA_MAX + 1] = {}; @@ -270,13 +375,34 @@
> > static int cmd_node_set_netid(struct nlmsghdr *nlh, const struct cmd *cmd,
> >  	return msg_doit(nlh, NULL, NULL);
> >  }
> >
> > +static void cmd_node_flush_help(struct cmdl *cmdl) {
> > +	fprintf(stderr,
> > +		"Usage: %s node flush PROPERTY\n\n"
> > +		"PROPERTIES\n"
> > +		" key                   - Flush all symmetric-keys\n",
> > +		cmdl->argv[0]);
> > +}
> > +
> > +static int cmd_node_flush(struct nlmsghdr *nlh, const struct cmd *cmd,
> > +			  struct cmdl *cmdl, void *data)
> > +{
> > +	const struct cmd cmds[] = {
> > +		{ "key",        cmd_node_flush_key,     NULL },
> > +		{ NULL }
> > +	};
> > +
> > +	return run_cmd(nlh, cmd, cmds, cmdl, NULL); }
> > +
> >  static void cmd_node_set_help(struct cmdl *cmdl)  {
> >  	fprintf(stderr,
> >  		"Usage: %s node set PROPERTY\n\n"
> >  		"PROPERTIES\n"
> >  		" identity NODEID       - Set node identity\n"
> > -		" clusterid CLUSTERID   - Set local cluster id\n",
> > +		" clusterid CLUSTERID   - Set local cluster id\n"
> > +		" key PROPERTY          - Set symmetric-key\n",
> >  		cmdl->argv[0]);
> >  }
> >
> > @@ -288,6 +414,7 @@ static int cmd_node_set(struct nlmsghdr *nlh,
> const struct cmd *cmd,
> >  		{ "identity",	cmd_node_set_nodeid,	NULL },
> >  		{ "netid",	cmd_node_set_netid,	NULL },
> >  		{ "clusterid",	cmd_node_set_netid,	NULL },
> > +		{ "key",	cmd_node_set_key,	cmd_node_set_key_help },
> >  		{ NULL }
> >  	};
> >
> > @@ -325,7 +452,8 @@ void cmd_node_help(struct cmdl *cmdl)
> >  		"COMMANDS\n"
> >  		" list                  - List remote nodes\n"
> >  		" get                   - Get local node parameters\n"
> > -		" set                   - Set local node parameters\n",
> > +		" set                   - Set local node parameters\n"
> > +		" flush                 - Flush local node parameters\n",
> >  		cmdl->argv[0]);
> >  }
> >
> > @@ -336,6 +464,7 @@ int cmd_node(struct nlmsghdr *nlh, const struct
> cmd *cmd, struct cmdl *cmdl,
> >  		{ "list",	cmd_node_list,	NULL },
> >  		{ "get",	cmd_node_get,	cmd_node_get_help },
> >  		{ "set",	cmd_node_set,	cmd_node_set_help },
> > +		{ "flush",	cmd_node_flush, cmd_node_flush_help},
> >  		{ NULL }
> >  	};
> >
> >


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
