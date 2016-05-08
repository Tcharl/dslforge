/*Hacked by DSL Forge*/
grammar InternalDomainmodel;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package org.eclipse.xtext.example.domainmodel.web.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.example.domainmodel.web.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.example.domainmodel.services.DomainmodelGrammarAccess;

}

@parser::members {
 
 	private DomainmodelGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(DomainmodelGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleDomainModel
entryRuleDomainModel 
:
{ before(grammarAccess.getDomainModelRule()); }
	 ruleDomainModel
{ after(grammarAccess.getDomainModelRule()); } 
	 EOF 
;

// Rule DomainModel
ruleDomainModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getDomainModelAccess().getElementsAssignment()); }
(rule__DomainModel__ElementsAssignment)*
{ after(grammarAccess.getDomainModelAccess().getElementsAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAbstractElement
entryRuleAbstractElement 
:
{ before(grammarAccess.getAbstractElementRule()); }
	 ruleAbstractElement
{ after(grammarAccess.getAbstractElementRule()); } 
	 EOF 
;

// Rule AbstractElement
ruleAbstractElement
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getAbstractElementAccess().getAlternatives()); }
(rule__AbstractElement__Alternatives)
{ after(grammarAccess.getAbstractElementAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleImport
entryRuleImport 
:
{ before(grammarAccess.getImportRule()); }
	 ruleImport
{ after(grammarAccess.getImportRule()); } 
	 EOF 
;

// Rule Import
ruleImport
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getImportAccess().getGroup()); }
(rule__Import__Group__0)
{ after(grammarAccess.getImportAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRulePackageDeclaration
entryRulePackageDeclaration 
:
{ before(grammarAccess.getPackageDeclarationRule()); }
	 rulePackageDeclaration
{ after(grammarAccess.getPackageDeclarationRule()); } 
	 EOF 
;

// Rule PackageDeclaration
rulePackageDeclaration
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getPackageDeclarationAccess().getGroup()); }
(rule__PackageDeclaration__Group__0)
{ after(grammarAccess.getPackageDeclarationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleType
entryRuleType 
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeAccess().getAlternatives()); }
(rule__Type__Alternatives)
{ after(grammarAccess.getTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleDataType
entryRuleDataType 
:
{ before(grammarAccess.getDataTypeRule()); }
	 ruleDataType
{ after(grammarAccess.getDataTypeRule()); } 
	 EOF 
;

// Rule DataType
ruleDataType
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getDataTypeAccess().getGroup()); }
(rule__DataType__Group__0)
{ after(grammarAccess.getDataTypeAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEntity
entryRuleEntity 
:
{ before(grammarAccess.getEntityRule()); }
	 ruleEntity
{ after(grammarAccess.getEntityRule()); } 
	 EOF 
;

// Rule Entity
ruleEntity
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEntityAccess().getGroup()); }
(rule__Entity__Group__0)
{ after(grammarAccess.getEntityAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleFeature
entryRuleFeature 
:
{ before(grammarAccess.getFeatureRule()); }
	 ruleFeature
{ after(grammarAccess.getFeatureRule()); } 
	 EOF 
;

// Rule Feature
ruleFeature
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getFeatureAccess().getAlternatives()); }
(rule__Feature__Alternatives)
{ after(grammarAccess.getFeatureAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleStructuralFeature
entryRuleStructuralFeature 
:
{ before(grammarAccess.getStructuralFeatureRule()); }
	 ruleStructuralFeature
{ after(grammarAccess.getStructuralFeatureRule()); } 
	 EOF 
;

// Rule StructuralFeature
ruleStructuralFeature
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getStructuralFeatureAccess().getAlternatives()); }
(rule__StructuralFeature__Alternatives)
{ after(grammarAccess.getStructuralFeatureAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAttribute
entryRuleAttribute 
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getAttributeAccess().getGroup()); }
(rule__Attribute__Group__0)
{ after(grammarAccess.getAttributeAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleReference
entryRuleReference 
:
{ before(grammarAccess.getReferenceRule()); }
	 ruleReference
{ after(grammarAccess.getReferenceRule()); } 
	 EOF 
;

// Rule Reference
ruleReference
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getReferenceAccess().getGroup()); }
(rule__Reference__Group__0)
{ after(grammarAccess.getReferenceAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleOperation
entryRuleOperation 
:
{ before(grammarAccess.getOperationRule()); }
	 ruleOperation
{ after(grammarAccess.getOperationRule()); } 
	 EOF 
;

// Rule Operation
ruleOperation
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getOperationAccess().getGroup()); }
(rule__Operation__Group__0)
{ after(grammarAccess.getOperationAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleParameter
entryRuleParameter 
:
{ before(grammarAccess.getParameterRule()); }
	 ruleParameter
{ after(grammarAccess.getParameterRule()); } 
	 EOF 
;

// Rule Parameter
ruleParameter
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getParameterAccess().getGroup()); }
(rule__Parameter__Group__0)
{ after(grammarAccess.getParameterAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleTypeRef
entryRuleTypeRef 
:
{ before(grammarAccess.getTypeRefRule()); }
	 ruleTypeRef
{ after(grammarAccess.getTypeRefRule()); } 
	 EOF 
;

// Rule TypeRef
ruleTypeRef
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTypeRefAccess().getGroup()); }
(rule__TypeRef__Group__0)
{ after(grammarAccess.getTypeRefAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleQualifiedName
entryRuleQualifiedName 
:
{ before(grammarAccess.getQualifiedNameRule()); }
	 ruleQualifiedName
{ after(grammarAccess.getQualifiedNameRule()); } 
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup()); }
(rule__QualifiedName__Group__0)
{ after(grammarAccess.getQualifiedNameAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleQualifiedNameWithWildcard
entryRuleQualifiedNameWithWildcard 
:
{ before(grammarAccess.getQualifiedNameWithWildcardRule()); }
	 ruleQualifiedNameWithWildcard
{ after(grammarAccess.getQualifiedNameWithWildcardRule()); } 
	 EOF 
;

// Rule QualifiedNameWithWildcard
ruleQualifiedNameWithWildcard
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getQualifiedNameWithWildcardAccess().getGroup()); }
(rule__QualifiedNameWithWildcard__Group__0)
{ after(grammarAccess.getQualifiedNameWithWildcardAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleValidID
entryRuleValidID 
:
{ before(grammarAccess.getValidIDRule()); }
	 ruleValidID
{ after(grammarAccess.getValidIDRule()); } 
	 EOF 
;

// Rule ValidID
ruleValidID
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getValidIDAccess().getIDTerminalRuleCall()); }
	RULE_ID
{ after(grammarAccess.getValidIDAccess().getIDTerminalRuleCall()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule Visibility
ruleVisibility
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVisibilityAccess().getAlternatives()); }
(rule__Visibility__Alternatives)
{ after(grammarAccess.getVisibilityAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__AbstractElement__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAbstractElementAccess().getPackageDeclarationParserRuleCall_0()); }
	rulePackageDeclaration
{ after(grammarAccess.getAbstractElementAccess().getPackageDeclarationParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getAbstractElementAccess().getTypeParserRuleCall_1()); }
	ruleType
{ after(grammarAccess.getAbstractElementAccess().getTypeParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getAbstractElementAccess().getImportParserRuleCall_2()); }
	ruleImport
{ after(grammarAccess.getAbstractElementAccess().getImportParserRuleCall_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeAccess().getEntityParserRuleCall_0()); }
	ruleEntity
{ after(grammarAccess.getTypeAccess().getEntityParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getTypeAccess().getDataTypeParserRuleCall_1()); }
	ruleDataType
{ after(grammarAccess.getTypeAccess().getDataTypeParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Feature__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getFeatureAccess().getStructuralFeatureParserRuleCall_0()); }
	ruleStructuralFeature
{ after(grammarAccess.getFeatureAccess().getStructuralFeatureParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getFeatureAccess().getOperationParserRuleCall_1()); }
	ruleOperation
{ after(grammarAccess.getFeatureAccess().getOperationParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__StructuralFeature__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getStructuralFeatureAccess().getAttributeParserRuleCall_0()); }
	ruleAttribute
{ after(grammarAccess.getStructuralFeatureAccess().getAttributeParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getStructuralFeatureAccess().getReferenceParserRuleCall_1()); }
	ruleReference
{ after(grammarAccess.getStructuralFeatureAccess().getReferenceParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Visibility__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_0()); }
(	'public' 
)
{ after(grammarAccess.getVisibilityAccess().getPublicEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_1()); }
(	'private' 
)
{ after(grammarAccess.getVisibilityAccess().getPrivateEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_2()); }
(	'protected' 
)
{ after(grammarAccess.getVisibilityAccess().getProtectedEnumLiteralDeclaration_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__Import__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Import__Group__0__Impl
	rule__Import__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportAccess().getImportKeyword_0()); }

	'import' 

{ after(grammarAccess.getImportAccess().getImportKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Import__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Import__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
(rule__Import__ImportedNamespaceAssignment_1)
{ after(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__PackageDeclaration__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PackageDeclaration__Group__0__Impl
	rule__PackageDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getPackageKeyword_0()); }

	'package' 

{ after(grammarAccess.getPackageDeclarationAccess().getPackageKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDeclaration__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PackageDeclaration__Group__1__Impl
	rule__PackageDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getNameAssignment_1()); }
(rule__PackageDeclaration__NameAssignment_1)
{ after(grammarAccess.getPackageDeclarationAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDeclaration__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PackageDeclaration__Group__2__Impl
	rule__PackageDeclaration__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getPackageDeclarationAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDeclaration__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PackageDeclaration__Group__3__Impl
	rule__PackageDeclaration__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getElementsAssignment_3()); }
(rule__PackageDeclaration__ElementsAssignment_3)*
{ after(grammarAccess.getPackageDeclarationAccess().getElementsAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDeclaration__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__PackageDeclaration__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getRightCurlyBracketKeyword_4()); }

	'}' 

{ after(grammarAccess.getPackageDeclarationAccess().getRightCurlyBracketKeyword_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__DataType__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DataType__Group__0__Impl
	rule__DataType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__DataType__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDataTypeAccess().getDatatypeKeyword_0()); }

	'datatype' 

{ after(grammarAccess.getDataTypeAccess().getDatatypeKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__DataType__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__DataType__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__DataType__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDataTypeAccess().getNameAssignment_1()); }
(rule__DataType__NameAssignment_1)
{ after(grammarAccess.getDataTypeAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Entity__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__0__Impl
	rule__Entity__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getEntityKeyword_0()); }

	'entity' 

{ after(grammarAccess.getEntityAccess().getEntityKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__1__Impl
	rule__Entity__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getNameAssignment_1()); }
(rule__Entity__NameAssignment_1)
{ after(grammarAccess.getEntityAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__2__Impl
	rule__Entity__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getGroup_2()); }
(rule__Entity__Group_2__0)?
{ after(grammarAccess.getEntityAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__3__Impl
	rule__Entity__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_3()); }

	'{' 

{ after(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__4__Impl
	rule__Entity__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getFeaturesAssignment_4()); }
(rule__Entity__FeaturesAssignment_4)*
{ after(grammarAccess.getEntityAccess().getFeaturesAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_5()); }

	'}' 

{ after(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__Entity__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group_2__0__Impl
	rule__Entity__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getExtendsKeyword_2_0()); }

	'extends' 

{ after(grammarAccess.getEntityAccess().getExtendsKeyword_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Entity__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__Group_2__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getSuperTypeAssignment_2_1()); }
(rule__Entity__SuperTypeAssignment_2_1)
{ after(grammarAccess.getEntityAccess().getSuperTypeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Attribute__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
(rule__Attribute__NameAssignment_0)
{ after(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getColonKeyword_1()); }

	':' 

{ after(grammarAccess.getAttributeAccess().getColonKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getTypeAssignment_2()); }
(rule__Attribute__TypeAssignment_2)
{ after(grammarAccess.getAttributeAccess().getTypeAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Reference__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group__0__Impl
	rule__Reference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getRefKeyword_0()); }

	'ref' 

{ after(grammarAccess.getReferenceAccess().getRefKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group__1__Impl
	rule__Reference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getNameAssignment_1()); }
(rule__Reference__NameAssignment_1)
{ after(grammarAccess.getReferenceAccess().getNameAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group__2__Impl
	rule__Reference__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getColonKeyword_2()); }

	':' 

{ after(grammarAccess.getReferenceAccess().getColonKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group__3__Impl
	rule__Reference__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getTypeAssignment_3()); }
(rule__Reference__TypeAssignment_3)
{ after(grammarAccess.getReferenceAccess().getTypeAssignment_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getGroup_4()); }
(rule__Reference__Group_4__0)?
{ after(grammarAccess.getReferenceAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}












rule__Reference__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group_4__0__Impl
	rule__Reference__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getOppositeKeyword_4_0()); }

	'opposite' 

{ after(grammarAccess.getReferenceAccess().getOppositeKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Reference__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getOppositeAssignment_4_1()); }
(rule__Reference__OppositeAssignment_4_1)
{ after(grammarAccess.getReferenceAccess().getOppositeAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Operation__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__0__Impl
	rule__Operation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getVisibilityAssignment_0()); }
(rule__Operation__VisibilityAssignment_0)?
{ after(grammarAccess.getOperationAccess().getVisibilityAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__1__Impl
	rule__Operation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getOpKeyword_1()); }

	'op' 

{ after(grammarAccess.getOperationAccess().getOpKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__2__Impl
	rule__Operation__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getNameAssignment_2()); }
(rule__Operation__NameAssignment_2)
{ after(grammarAccess.getOperationAccess().getNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__3__Impl
	rule__Operation__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getLeftParenthesisKeyword_3()); }

	'(' 

{ after(grammarAccess.getOperationAccess().getLeftParenthesisKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__4__Impl
	rule__Operation__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getGroup_4()); }
(rule__Operation__Group_4__0)?
{ after(grammarAccess.getOperationAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__5__Impl
	rule__Operation__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getRightParenthesisKeyword_5()); }

	')' 

{ after(grammarAccess.getOperationAccess().getRightParenthesisKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__6__Impl
	rule__Operation__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getColonKeyword_6()); }

	':' 

{ after(grammarAccess.getOperationAccess().getColonKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getTypeAssignment_7()); }
(rule__Operation__TypeAssignment_7)
{ after(grammarAccess.getOperationAccess().getTypeAssignment_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__Operation__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_4__0__Impl
	rule__Operation__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getParamsAssignment_4_0()); }
(rule__Operation__ParamsAssignment_4_0)
{ after(grammarAccess.getOperationAccess().getParamsAssignment_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getGroup_4_1()); }
(rule__Operation__Group_4_1__0)*
{ after(grammarAccess.getOperationAccess().getGroup_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Operation__Group_4_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_4_1__0__Impl
	rule__Operation__Group_4_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_4_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getCommaKeyword_4_1_0()); }

	',' 

{ after(grammarAccess.getOperationAccess().getCommaKeyword_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group_4_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Operation__Group_4_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group_4_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getParamsAssignment_4_1_1()); }
(rule__Operation__ParamsAssignment_4_1_1)
{ after(grammarAccess.getOperationAccess().getParamsAssignment_4_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Parameter__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Parameter__Group__0__Impl
	rule__Parameter__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParameterAccess().getNameAssignment_0()); }
(rule__Parameter__NameAssignment_0)
{ after(grammarAccess.getParameterAccess().getNameAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Parameter__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Parameter__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParameterAccess().getTypeAssignment_1()); }
(rule__Parameter__TypeAssignment_1)
{ after(grammarAccess.getParameterAccess().getTypeAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__TypeRef__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeRef__Group__0__Impl
	rule__TypeRef__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRef__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeRefAccess().getReferencedAssignment_0()); }
(rule__TypeRef__ReferencedAssignment_0)
{ after(grammarAccess.getTypeRefAccess().getReferencedAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TypeRef__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TypeRef__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRef__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeRefAccess().getMultiAssignment_1()); }
(rule__TypeRef__MultiAssignment_1)?
{ after(grammarAccess.getTypeRefAccess().getMultiAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__0__Impl
	rule__QualifiedName__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_0()); }
	ruleValidID
{ after(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
(rule__QualifiedName__Group_1__0)*
{ after(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedName__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__0__Impl
	rule__QualifiedName__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }

	'.' 

{ after(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedName__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_1_1()); }
	ruleValidID
{ after(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__QualifiedNameWithWildcard__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedNameWithWildcard__Group__0__Impl
	rule__QualifiedNameWithWildcard__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedNameWithWildcard__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameWithWildcardAccess().getQualifiedNameParserRuleCall_0()); }
	ruleQualifiedName
{ after(grammarAccess.getQualifiedNameWithWildcardAccess().getQualifiedNameParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedNameWithWildcard__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedNameWithWildcard__Group__1__Impl
	rule__QualifiedNameWithWildcard__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedNameWithWildcard__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameWithWildcardAccess().getFullStopKeyword_1()); }

	'.' 

{ after(grammarAccess.getQualifiedNameWithWildcardAccess().getFullStopKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedNameWithWildcard__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__QualifiedNameWithWildcard__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedNameWithWildcard__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getQualifiedNameWithWildcardAccess().getAsteriskKeyword_2()); }

	'*' 

{ after(grammarAccess.getQualifiedNameWithWildcardAccess().getAsteriskKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}









rule__DomainModel__ElementsAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDomainModelAccess().getElementsAbstractElementParserRuleCall_0()); }
	ruleAbstractElement{ after(grammarAccess.getDomainModelAccess().getElementsAbstractElementParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Import__ImportedNamespaceAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameWithWildcardParserRuleCall_1_0()); }
	ruleQualifiedNameWithWildcard{ after(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameWithWildcardParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getNameQualifiedNameParserRuleCall_1_0()); }
	ruleQualifiedName{ after(grammarAccess.getPackageDeclarationAccess().getNameQualifiedNameParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDeclaration__ElementsAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getPackageDeclarationAccess().getElementsAbstractElementParserRuleCall_3_0()); }
	ruleAbstractElement{ after(grammarAccess.getPackageDeclarationAccess().getElementsAbstractElementParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__DataType__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getDataTypeAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getDataTypeAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__SuperTypeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getSuperTypeEntityCrossReference_2_1_0()); }
(
{ before(grammarAccess.getEntityAccess().getSuperTypeEntityQualifiedNameParserRuleCall_2_1_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getEntityAccess().getSuperTypeEntityQualifiedNameParserRuleCall_2_1_0_1()); }
)
{ after(grammarAccess.getEntityAccess().getSuperTypeEntityCrossReference_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__FeaturesAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getFeaturesFeatureParserRuleCall_4_0()); }
	ruleFeature{ after(grammarAccess.getEntityAccess().getFeaturesFeatureParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
	RULE_ID{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__TypeAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getTypeTypeRefParserRuleCall_2_0()); }
	ruleTypeRef{ after(grammarAccess.getAttributeAccess().getTypeTypeRefParserRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getReferenceAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__TypeAssignment_3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getTypeTypeRefParserRuleCall_3_0()); }
	ruleTypeRef{ after(grammarAccess.getReferenceAccess().getTypeTypeRefParserRuleCall_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__OppositeAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getReferenceAccess().getOppositeReferenceCrossReference_4_1_0()); }
(
{ before(grammarAccess.getReferenceAccess().getOppositeReferenceIDTerminalRuleCall_4_1_0_1()); }
	RULE_ID{ after(grammarAccess.getReferenceAccess().getOppositeReferenceIDTerminalRuleCall_4_1_0_1()); }
)
{ after(grammarAccess.getReferenceAccess().getOppositeReferenceCrossReference_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__VisibilityAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
	ruleVisibility{ after(grammarAccess.getOperationAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__NameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__ParamsAssignment_4_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getParamsParameterParserRuleCall_4_0_0()); }
	ruleParameter{ after(grammarAccess.getOperationAccess().getParamsParameterParserRuleCall_4_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__ParamsAssignment_4_1_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getParamsParameterParserRuleCall_4_1_1_0()); }
	ruleParameter{ after(grammarAccess.getOperationAccess().getParamsParameterParserRuleCall_4_1_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__TypeAssignment_7
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getOperationAccess().getTypeTypeRefParserRuleCall_7_0()); }
	ruleTypeRef{ after(grammarAccess.getOperationAccess().getTypeTypeRefParserRuleCall_7_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParameterAccess().getNameIDTerminalRuleCall_0_0()); }
	RULE_ID{ after(grammarAccess.getParameterAccess().getNameIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Parameter__TypeAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getParameterAccess().getTypeTypeRefParserRuleCall_1_0()); }
	ruleTypeRef{ after(grammarAccess.getParameterAccess().getTypeTypeRefParserRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRef__ReferencedAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeRefAccess().getReferencedTypeCrossReference_0_0()); }
(
{ before(grammarAccess.getTypeRefAccess().getReferencedTypeQualifiedNameParserRuleCall_0_0_1()); }
	ruleQualifiedName{ after(grammarAccess.getTypeRefAccess().getReferencedTypeQualifiedNameParserRuleCall_0_0_1()); }
)
{ after(grammarAccess.getTypeRefAccess().getReferencedTypeCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRef__MultiAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeRefAccess().getMultiAsteriskKeyword_1_0()); }
(
{ before(grammarAccess.getTypeRefAccess().getMultiAsteriskKeyword_1_0()); }

	'*' 

{ after(grammarAccess.getTypeRefAccess().getMultiAsteriskKeyword_1_0()); }
)

{ after(grammarAccess.getTypeRefAccess().getMultiAsteriskKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

